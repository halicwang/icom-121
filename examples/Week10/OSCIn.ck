Mandolin m => dac;

OscIn oin;
OscMsg msg;
6449 => oin.port;

"/playNote" => oin.addAddress;
while(true)
{
    oin => now;
    while(oin.recv(msg))
    {
        
        msg.address @=> string address;
        msg.getInt(0) => int note;
        msg.getFloat(1) => float gain;
        
        <<< address, note, gain >>>;
        note => Std.mtof => m.freq;
        gain => m.pluck;
    }
}
