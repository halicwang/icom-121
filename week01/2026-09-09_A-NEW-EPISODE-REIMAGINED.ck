SinOsc s1 => dac;
SinOsc s2 => dac;
SinOsc s3 => dac;
SinOsc s4 => dac;
SinOsc s5 => dac;
SinOsc s6 => dac;

0.12 => s1.gain;
0.12 => s2.gain;
0.12 => s3.gain;
0.12 => s4.gain;
0.12 => s5.gain;
0.12 => s6.gain;

while (true) {
    Std.mtof(44) => s1.freq;  // Ab2
    Std.mtof(51) => s2.freq;  // Eb3
    Std.mtof(58) => s3.freq;  // Bb3
    Std.mtof(60) => s4.freq;  // C4
    Std.mtof(63) => s5.freq;  // Eb4
    Std.mtof(67) => s6.freq;  // G4
    2::second => now;
    
    Std.mtof(43) => s1.freq;  // G2
    Std.mtof(53) => s2.freq;  // F3
    Std.mtof(59) => s3.freq;  // B3
    Std.mtof(63) => s4.freq;  // Eb4
    Std.mtof(67) => s5.freq;  // G4
    0 => s6.gain;
    2::second => now;
    0.12 => s6.gain;
    
    Std.mtof(36) => s1.freq;  // C2
    Std.mtof(55) => s2.freq;  // G3
    Std.mtof(58) => s3.freq;  // Bb3
    Std.mtof(60) => s4.freq;  // C4
    Std.mtof(63) => s5.freq;  // Eb4
    Std.mtof(67) => s6.freq;  // G4
    2::second => now;
    
    Std.mtof(46) => s1.freq;  // Bb2
    Std.mtof(53) => s2.freq;  // F3
    Std.mtof(60) => s3.freq;  // C4
    Std.mtof(61) => s4.freq;  // Db4
    Std.mtof(63) => s5.freq;  // Eb4
    Std.mtof(68) => s6.freq;  // Ab4
    1::second => now;
    
    Std.mtof(39) => s1.freq;  // Eb2
    Std.mtof(51) => s2.freq;  // Eb3
    Std.mtof(58) => s3.freq;  // Bb3
    Std.mtof(61) => s4.freq;  // Db4
    Std.mtof(65) => s5.freq;  // F4
    Std.mtof(68) => s6.freq;  // Ab4
    1::second => now;
}