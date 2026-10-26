// sound network
SinOsc s => dac;

// middle (freq in hz)
261.63 => float myFreq;
// variable volume control
0.6 => float myVol;

// set frequency
myFreq => s.freq;
// set volume
myVol => s.gain;
// one second
1::second => now;


