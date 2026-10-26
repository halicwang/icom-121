// clap.ck

SndBuf clap => dac;
me.dir(-1) + "/audio/clap_01.wav" => clap.read;

BPM tempo;

while(true)
{
    tempo.sixteenthNote => dur sixteenth;
    
    for ( 0 => int beat; beat < 16; beat++)
    {
        if (Math.random2(0,7) < 3)
        {
            0 => clap.pos; 
        }
        sixteenth => now;
    }
}