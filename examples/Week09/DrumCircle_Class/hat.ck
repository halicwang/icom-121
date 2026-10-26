// hat.ck

SndBuf hat => dac;
me.dir(-1) + "/audio/hihat_02.wav" => hat.read;

BPM tempo;

while(true)
{
    tempo.eighthNote => dur eighth;
    
    for ( 0 => int beat; beat < 8; beat++)
    {
        if (beat != 7) // SYMBOL FOR DIFFERENT!!
        {
            0 => hat.pos; 
        }
        eighth => now;
    }
}