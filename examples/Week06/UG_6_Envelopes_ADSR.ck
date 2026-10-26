// sound chain
SqrOsc clar => ADSR env => dac;
(0.5::second, 0.1::second, 0.1, 2.0::second) => env.set; // an array in parentheses

1 => env.keyOn; // turns envelope on 

2.0::second => now;

1 => env.keyOff; // turns envelope off

2.0::second => now;