// Sound Chain
adc => Chorus chor => dac;
0.05 => chor.modDepth; // how much modulation = deeper fx
2 => chor.modFreq; // frequency of modulation
while (true)
{
    1.0::second => now;
}

