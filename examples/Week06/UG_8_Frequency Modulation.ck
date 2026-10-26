// sound chain
SinOsc mod => SinOsc car => ADSR env => dac; // car : carrier frequency
(0.5::second, 0.1::second, 0.6, 0.5::second) => env.set;

100 => car.freq; // change pitch
100 => mod.freq; // vibrato frequency
10000 => mod.gain; // amount of modulation
2 => car.sync; // set sync mode to FM (2)
1 => env.keyOn; // turns envelope on 

2.0::second => now;

1 => env.keyOff; // turns envelope off

2.0::second => now;