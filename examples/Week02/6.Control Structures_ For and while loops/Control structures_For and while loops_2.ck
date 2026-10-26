//sound network
SinOsc s => dac;

// for loop
for(20 => int i; i < 400; i++)
{
    <<< i >>>;
    i => s.freq;
    0.5 => s.gain;
    0.1::second => now;
}