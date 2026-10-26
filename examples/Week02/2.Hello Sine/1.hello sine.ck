// sound network  (whatever is going to make sound, just before what you are chucking)
SawOsc s => dac; // Sin, Sqr, Tri, Saw, S es el nombre de mi oscilador
//  chucking it into dac, digital to analog converter (basically the speaker or sound card)

// prints program name
<<< "hello Sine!" >>>;

0.6 => s.gain; 
220 => s.freq;
1::second => now;

// Block 
/*
0.5 => s.gain;
440 => s.freq;
2::second => now;

0.3 => s.gain;
330 => s.freq;
3::second => now;
*/

