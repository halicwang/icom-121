SinOsc s => dac;
SinOsc s2 => dac;
SndBuf k => dac;

Std.mtof(48) => float C3;
Std.mtof(50) => float D3;
Std.mtof(52) => float E3;
Std.mtof(53) => float F3;
Std.mtof(55) => float G3;
Std.mtof(57) => float A3;
Std.mtof(59) => float B3;
Std.mtof(60) => float C4;
Std.mtof(62) => float D4;
Std.mtof(64) => float E4;
Std.mtof(65) => float F4;
Std.mtof(67) => float G4;
Std.mtof(69) => float A4;
Std.mtof(71) => float B4;
Std.mtof(72) => float C5;

0.2 => s.gain;
0.2 => s2.gain;
me.dir() + "kick.wav" => k.read;
k.samples() => k.pos;

[64, 65, 67, 69, 67, 65, 64] @=> int melody[];
[60, 62, 64, 65, 64, 62, 60] @=> int harmony[];
[0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.8] @=> float harmonyDurs[];

for (0 => int i; i < melody.cap(); i++)
{
    Std.mtof(melody[i]) => s.freq;
    Std.mtof(harmony[i]) => s2.freq;
    0 => k.pos;
    harmonyDurs[i]::second => now;
}

[E4, G4, C5, B4, A4, G4, F4, E4] @=> float tune[];
[C3, E3, A3, G3, F3, E3, D3, C3] @=> float bass[];
[0.4, 0.4, 0.8, 0.4, 0.4, 0.4, 0.4, 1.2] @=> float tuneDurs[];

0.2 => s.gain;
0.2 => s2.gain;

for (0 => int i; i < tune.cap(); i++)
{
    tune[i] => s.freq;
    bass[i] => s2.freq;
    0 => k.pos;
    tuneDurs[i]::second => now;
}

0 => s.gain;
0 => s2.gain;
