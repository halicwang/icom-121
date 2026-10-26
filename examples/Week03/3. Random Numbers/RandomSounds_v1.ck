// sound chain

SqrOsc s => dac;

Math.srandom(134); // set seed - Same composition every time it is played, but it is randomly assigned at the beginning

// infinite loop

while (true)
{
    Math.random2(20,500) => int i; // generate random int
    Math.random2f(.2,.9) => float v; // generate random volume
    <<< i, v>>>; // print out variables
    i => s.freq; // update frequency
    v => s.gain; // update volume
    .5::second => now;
    }