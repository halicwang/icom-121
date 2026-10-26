// sound chain
SqrOsc clar => Envelope env => dac;
1.0::second => env.duration; // the time it takes to get to the maximum volume and then to stop the sound

1 => env.keyOn; // turns envelope on 

2.0::second => now;

1 => env.keyOff; // turns envelope off

2.0::second => now;