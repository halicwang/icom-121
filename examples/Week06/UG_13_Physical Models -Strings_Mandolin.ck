// sound chain
Mandolin m => dac;
// 0.25 position would be about 1/4 of the way up
0.25 => m.pluckPos; // 0.5 corresponds to pluck in the middle of the string, 1 on one end, 0 on the other end
// we have to set the pluck position before we pluck it, before sending note on
1.0 => m.noteOn; // plucks strings
500 => m.freq;
0.02 => m.stringDetune;
0.25 => m.bodySize; // 0.5 is the natural mandolin body, 0.25 would be a body about twice as big




2.0::second => now;