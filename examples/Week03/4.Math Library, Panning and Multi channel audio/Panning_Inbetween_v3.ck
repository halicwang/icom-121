// Sound chain 
SinOsc s => Pan2 p => dac;

//hard pan
1.0 => p.pan;
// advance time
1::second => now;



