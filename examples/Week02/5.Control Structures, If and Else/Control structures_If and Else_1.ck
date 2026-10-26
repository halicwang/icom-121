//sound network
SinOsc s => dac;

// set frequency
222.45 => s.freq;
// set volume
0.2 => s.gain;

// at this point chance is 0, chance is the variable
0 => int chance;

if( chance == 1 )
// sound only plays, when time has passed, in this case will happen just if chance: 1
{
    //sound only plays if chance == 1
    1::second => now;
}
else
{
    // set new frequency
    440.32 => s.freq;
    //play for 3 seconds
    3::second=>now;
}