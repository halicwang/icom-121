SinOsc s1 => dac;
SinOsc s2 => dac;
SinOsc s3 => dac;
SinOsc s4 => dac;
SinOsc low => dac;

0.3 => s1.gain;
0.0 => s2.gain;
0.0 => s3.gain;
0.0 => s4.gain;
0.4 => low.gain;

/// 1

[50, 62, 74, 86] @=> int arp_1[];
[46, 62, 74, 86] @=> int arp_2[];
[50, 64, 74, 86] @=> int arp_3[];
[43, 62, 74, 86] @=> int arp_4[];

0.0 => s4.gain;
0.3 => s1.gain;

for (0 => int i; i < 8 * arp_1.size(); i++){
    Std.mtof(arp_1[i % arp_1.size()]) => s1.freq;
    Std.mtof(arp_1[(2 * i) % arp_1.size()] - 24) => low.freq;
    0.12::second => now;
    Std.mtof(arp_1[(2 * i) % arp_1.size()] - 24) => low.freq;
    0.12::second => now;
}

0.0 => s1.gain;
0.3 => s2.gain;
0.3 => low.gain;

for (0 => int i; i < 4 * arp_2.size(); i++){
    Std.mtof(arp_2[i % arp_2.size()]) => s2.freq;
    Std.mtof(arp_2[(2 * i) % arp_2.size()] - 24) => low.freq;
    0.11::second => now;
    Std.mtof(arp_2[(2 * i) % arp_2.size()] - 24) => low.freq;
    0.11::second => now;
}

0.0 => s2.gain;
0.3 => s3.gain;
0.28 => low.gain;

for (0 => int i; i < 4 * arp_3.size(); i++){
    Std.mtof(arp_3[i % arp_3.size()]) => s3.freq;
    Std.mtof(arp_3[(2 * i) % arp_2.size()] - 24) => low.freq;
    0.1::second => now;
    Std.mtof(arp_3[(2 * i) % arp_2.size()] - 24) => low.freq;
    0.1::second => now;
}

0.5 => low.gain;
0.0 => s3.gain;
0.3 => s4.gain;

for (0 => int i; i < 8 * arp_4.size(); i++){
    Std.mtof(arp_4[i % arp_4.size()]) => s4.freq;
    Std.mtof(38) => low.freq;
    0.17::second => now;
}

0.0::second => now;

/// 2

[49, 61, 73, 85] @=> arp_1;
[45, 61, 73, 85] @=> arp_2;
[49, 63, 73, 85] @=> arp_3;
[42, 61, 73, 85] @=> arp_4;

0.0 => s4.gain;
0.3 => s1.gain;

for (0 => int i; i < 8 * arp_1.size(); i++){
    Std.mtof(arp_1[i % arp_1.size()]) => s1.freq;
    Std.mtof(arp_1[(2 * i) % arp_1.size()] - 24) => low.freq;
    0.08::second => now;
    Std.mtof(arp_1[(2 * i) % arp_1.size()] - 24) => low.freq;
    0.08::second => now;
}

0.0 => s1.gain;
0.3 => s2.gain;
0.3 => low.gain;

for (0 => int i; i < 4 * arp_2.size(); i++){
    Std.mtof(arp_2[i % arp_2.size()]) => s2.freq;
    Std.mtof(arp_2[(2 * i) % arp_2.size()] - 24) => low.freq;
    0.07::second => now;
    Std.mtof(arp_2[(2 * i) % arp_2.size()] - 24) => low.freq;
    0.07::second => now;
}

0.0 => s2.gain;
0.3 => s3.gain;
0.28 => low.gain;

for (0 => int i; i < 4 * arp_3.size(); i++){
    Std.mtof(arp_3[i % arp_3.size()]) => s3.freq;
    Std.mtof(arp_3[(2 * i) % arp_2.size()] - 24) => low.freq;
    0.06::second => now;
    Std.mtof(arp_3[(2 * i) % arp_2.size()] - 24) => low.freq;
    0.06::second => now;
}

0.5 => low.gain;
0.0 => s3.gain;
0.3 => s4.gain;

for (0 => int i; i < 8 * arp_4.size(); i++){
    Std.mtof(arp_4[i % arp_4.size()]) => s4.freq;
    Std.mtof(38) => low.freq;
    0.1::second => now;
}

/// 3

[48, 60, 72, 84] @=> arp_1;
[44, 60, 72, 84] @=> arp_2;
[48, 62, 72, 84] @=> arp_3;
[41, 60, 72, 84] @=> arp_4;

0.0 => s4.gain;
0.3 => s1.gain;

for (0 => int i; i < 8 * arp_1.size(); i++){
    Std.mtof(arp_1[i % arp_1.size()]) => s1.freq;
    Std.mtof(arp_1[(2 * i) % arp_1.size()] - 24) => low.freq;
    0.04::second => now;
    Std.mtof(arp_1[(2 * i) % arp_1.size()] - 24) => low.freq;
    0.04::second => now;
}

0.0 => s1.gain;
0.3 => s2.gain;
0.3 => low.gain;

for (0 => int i; i < 8 * arp_2.size(); i++){
    Std.mtof(arp_2[i % arp_2.size()]) => s2.freq;
    Std.mtof(arp_2[(2 * i) % arp_2.size()] - 24) => low.freq;
    0.03::second => now;
    Std.mtof(arp_2[(2 * i) % arp_2.size()] - 24) => low.freq;
    0.03::second => now;
}

0.0 => s2.gain;
0.3 => s3.gain;
0.28 => low.gain;

for (0 => int i; i < 16 * arp_3.size(); i++){
    Std.mtof(arp_3[i % arp_3.size()]) => s3.freq;
    Std.mtof(arp_3[(2 * i) % arp_2.size()] - 24) => low.freq;
    0.01::second => now;
    Std.mtof(arp_3[(2 * i) % arp_2.size()] - 24) => low.freq;
    0.01::second => now;
}

0.5 => low.gain;
0.0 => s3.gain;
0.3 => s4.gain;

for (0 => int i; i < 128 * arp_4.size(); i++){
    Std.mtof(arp_4[i % arp_4.size()]) => s4.freq;
    Std.mtof(38) => low.freq;
    0.01::second => now;
}

/// 4

0.0 => low.gain;

0.5::second => now;

0.0 => s4.gain;
0.3 => s1.gain;

[84, 84, 91, 91, 93, 93, 91, 91, 89, 89, 88, 88, 86, 86, 84] @=> int melody1[];

for (0 => int i; i < melody1.size(); i++){
    Std.mtof(melody1[i]) => s1.freq;
    0.3 => s1.gain;
    0.35::second => now;
    0.0 => s1.gain;
    0.05::second => now;
}
