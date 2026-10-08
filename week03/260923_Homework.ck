SinOsc perc => dac;
0 => perc.gain;

SinOsc a[7];

for (0 => int i; i < 7; i++) {
    a[i] => dac;
    0.0 => a[i].gain;
}

[48, 52, 55, 59, 62] @=> int chord1[];
[57, 61, 64, 67, 71, 74] @=> int chord2[];
[50, 53, 57, 60, 64] @=> int chord3[];
[55, 60, 62, 65, 69, 72, 76] @=> int chord4[];
[52, 55, 59, 62, 66] @=> int chord5[];
[57, 61, 64, 67, 70] @=> int chord6[];
[50, 53, 57, 60, 64] @=> int chord7[];
[55, 59, 62, 65, 69, 72, 76] @=> int chord8[];



1::second => now;

0.3 => perc.gain;

// I

for (0 => int i; i < 16; i++) {
    Std.mtof(chord1[i % chord1.size()] + 12) => perc.freq;
    0.18::second => now;
    Math.random2f(0.1, 0.3) => perc.gain;
}



// II

for (0 => int i; i < 6; i++) {
    Std.mtof(chord2[i]) => a[i].freq;
    0.1 => a[i].gain;
}

2.88::second => now;

for (0 => int i; i < 7; i++) {
    0.0 => a[i].gain;
}



// III

for (0 => int i; i < 16; i++) {
    Std.mtof(chord3[i % chord1.size()] + 12) => perc.freq;
    0.18::second => now;
    Math.random2f(0.1, 0.3) => perc.gain;
}

// IV

for (0 => int i; i < 6; i++) {
    Std.mtof(chord4[i]) => a[i].freq;
    0.1 => a[i].gain;
}

2.88::second => now;

for (0 => int i; i < 7; i++) {
    0.0 => a[i].gain;
}

// V

for (0 => int i; i < 16; i++) {
    Std.mtof(chord5[i % chord1.size()] + 12) => perc.freq;
    0.18::second => now;
    Math.random2f(0.1, 0.3) => perc.gain;
}

// VI

for (0 => int i; i < 5; i++) {
    Std.mtof(chord6[i]) => a[i].freq;
    0.1 => a[i].gain;
}

2.88::second => now;

0.2 => perc.gain;

// VII

for (0 => int i; i < 5; i++) {
    Std.mtof(chord7[i]) => a[i].freq;
    0.1 => a[i].gain;
}

for (0 => int i; i < 180; i++) {
    Std.mtof(chord7[0] + 12 + i * (-7.0 / 180)) => perc.freq;
    0.016::second => now;
}

// VIII

0 => perc.gain;

for (0 => int i; i < 7; i++) {
    Std.mtof(chord8[i]) => a[i].freq;
    0.1 => a[i].gain;
}

2.88::second => now;