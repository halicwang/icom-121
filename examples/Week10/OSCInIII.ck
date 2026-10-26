Mandolin m => dac;
SndBuf buf => dac;
me.dir() +"/audio/snare_01.wav" => buf.read;
buf.samples() => buf.pos;

OscIn oin;
OscMsg msg;
6449 => oin.port;

//"/playNote" => oin.addAddress;
//"/drums/snare" => oin.addAddress;

oin.listenAll();

while(true)
{
    oin => now;
    while(oin.recv(msg))
    {
        
        msg.address @=> string address;
        if(msg.address == "/playNote")
        {
            msg.getInt(0) => int note;
            msg.getFloat(1) => float gain;
            
            <<< address, note, gain >>>;
            note => Std.mtof => m.freq;
            gain => m.pluck;
        }
        else if(msg.address == "/drums/snare")
        {
            <<< address >>>;
            0 => buf.pos;
            msg.getFloat(0) => buf.gain;
            msg.getFloat(1) => buf.rate;
        }
    }
}
