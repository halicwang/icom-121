// Midi out setup
MidiOut mout;
MidiMsg msg;

// MIDI port
5 => int port;


if (!mout.open(port) )
{
    <<< "Error: MIDI PORT did not open on port:", port >>>;
    me.exit();
}

fun void send(int note, int velocity)
{
    144 => msg.data1;
    note => msg.data2;
    velocity => msg.data3;
    mout.send(msg); // what actually sends the message
}

while (true)
{
    Math.random2(0,12) => int arm;
    Math.random2(0,127) => int volume;
    send(arm, volume);
    .1:: second => now;
}