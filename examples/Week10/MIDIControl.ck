// sound chain
SndBuf snare => dac;
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

// sound file and initialization
me.dir() +"/audio/snare_01.wav" => snare.read;
snare.samples() => snare.pos;

// Global variables
int buttonVelocity;
Event buttonPress;
int knob[8];

fun void playDrum()
{
    while (true)
    {
        buttonPress => now;
        buttonVelocity/127.0 => snare.gain;
        0 => snare.pos;
    }
}
fun void rateChange()
{
    while (true)
    {
        20::ms => now;
        (knob[0]/125.0) + 0.5 => snare.rate;
    }
}
spork ~rateChange();
spork ~playDrum();
// loop
while (true)
{
    min => now;
    while (min.recv(msg))
    {
        // print out all data
        <<< msg.data1, msg.data2, msg.data3 >>>;
        if (msg.data1 == 144)
        {
            if (msg.data2 == 44)
            {
                msg.data3 => buttonVelocity;
                buttonPress.broadcast();
            }
        }
        else if (msg.data1 == 176)
        {
            msg.data3 => knob[msg.data2-1];
        }
        
    }
}