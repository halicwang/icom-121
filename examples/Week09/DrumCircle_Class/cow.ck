// cow.ck

SndBuf cow => dac;
me.dir(-1) + "/audio/cowbell_01.wav" => cow.read;

BPM tempo;

while(true)
{
    // because the variable eighthNote is now static, it will be link to the tempo set on the initialize.ck file
    tempo.eighthNote => dur eighth;
    
    for ( 0 => int beat; beat < 8; beat++)
    {
        if (beat == 7)
        {
            0 => cow.pos; 
        }
        eighth => now;
    }
}