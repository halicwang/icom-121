// sound chain
Rhodey p => dac;
//MIDI in setup
MidiIn min;
MidiMsg msg;

// MIDI Port
5 => int port;

// open the port

if (!min.open(port) )
{
    <<< "ERROR: MIDI PORT did not open on port:", port >>>;
    me.exit;
}

// Global variables
int pianoNote, pianoVelocity;
Event pianoPress;

fun void playPiano()
{
    while (true)
    {
        pianoPress => now;
        Std.mtof(pianoNote) => p.freq;
        pianoVelocity/127.0 => p.noteOn;
    }
}
spork ~ playPiano();
// loop
while (true)
{
    min => now;
    while (min.recv(msg))
    {
        // print out all data
        <<< msg.data1, msg.data2, msg.data3 >>>;
        // parse messages
        if (msg.data1 == 144 )
        {
            msg.data2 => pianoNote;
            msg.data3 => pianoVelocity;
            pianoPress.broadcast();
        }
        else if (msg.data1 == 128)
        {
            0 => pianoVelocity;
            pianoPress.broadcast();
        }
    }
}