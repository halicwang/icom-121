// sound chain
SinOsc mod => SawOsc car => ADSR env => dac; // car : carrier frequency
(0.1::second, 0.01::second, 0.6, 0.2::second) => env.set;

1000 => mod.gain; // amount of modulation
2 => car.sync; // set sync mode to FM (2)
1 => env.keyOn; // turns envelope on 

while (true)
{
    Math.random2f(100.0,1000.0) => car.freq;
    Math.random2f(100.0,1000.0) => mod.freq;
    1 => env.keyOn;
    .2::second => now;
    1 => env.keyOff;
    .2::second =>now;
}

2.0::second => now;