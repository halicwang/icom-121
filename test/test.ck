fun float edo31(int midi)
{
    [0, 3, 5, 8, 10, 13, 16, 18, 21, 23, 26, 28] @=> int steps[];
    ((midi / 12 - 5) * 31 + steps[midi % 12] - 23) => int distance;
    
    return 440.0 * Math.pow(2.0, distance / 31.0);
}

edo31(21) => float A0;
edo31(22) => float Bb0;
edo31(23) => float B0;
edo31(24) => float C1;
edo31(25) => float Db1;
edo31(26) => float D1;
edo31(27) => float Eb1;
edo31(28) => float E1;
edo31(29) => float F1;
edo31(30) => float Gb1;
edo31(31) => float G1;
edo31(32) => float Ab1;
edo31(33) => float A1;
edo31(34) => float Bb1;
edo31(35) => float B1;
edo31(36) => float C2;
edo31(37) => float Db2;
edo31(38) => float D2;
edo31(39) => float Eb2;
edo31(40) => float E2;
edo31(41) => float F2;
edo31(42) => float Gb2;
edo31(43) => float G2;
edo31(44) => float Ab2;
edo31(45) => float A2;
edo31(46) => float Bb2;
edo31(47) => float B2;
edo31(48) => float C3;
edo31(49) => float Db3;
edo31(50) => float D3;
edo31(51) => float Eb3;
edo31(52) => float E3;
edo31(53) => float F3;
edo31(54) => float Gb3;
edo31(55) => float G3;
edo31(56) => float Ab3;
edo31(57) => float A3;
edo31(58) => float Bb3;
edo31(59) => float B3;
edo31(60) => float C4;
edo31(61) => float Db4;
edo31(62) => float D4;
edo31(63) => float Eb4;
edo31(64) => float E4;
edo31(65) => float F4;
edo31(66) => float Gb4;
edo31(67) => float G4;
edo31(68) => float Ab4;
edo31(69) => float A4;
edo31(70) => float Bb4;
edo31(71) => float B4;
edo31(72) => float C5;
edo31(73) => float Db5;
edo31(74) => float D5;
edo31(75) => float Eb5;
edo31(76) => float E5;
edo31(77) => float F5;
edo31(78) => float Gb5;
edo31(79) => float G5;
edo31(80) => float Ab5;
edo31(81) => float A5;
edo31(82) => float Bb5;
edo31(83) => float B5;
edo31(84) => float C6;
edo31(85) => float Db6;
edo31(86) => float D6;
edo31(87) => float Eb6;
edo31(88) => float E6;
edo31(89) => float F6;
edo31(90) => float Gb6;
edo31(91) => float G6;
edo31(92) => float Ab6;
edo31(93) => float A6;
edo31(94) => float Bb6;
edo31(95) => float B6;
edo31(96)  => float C7;
edo31(97)  => float Db7;
edo31(98)  => float D7;
edo31(99)  => float Eb7;
edo31(100) => float E7;
edo31(101) => float F7;
edo31(102) => float Gb7;
edo31(103) => float G7;
edo31(104) => float Ab7;
edo31(105) => float A7;
edo31(106) => float Bb7;
edo31(107) => float B7;
edo31(108) => float C8;

SawOsc chordNote[8];
Gain chordBus => dac;

for (0 => int i; i < 8; i++)
{
    chordNote[i] => chordBus;
    0.12 => chordNote[i].gain;
}

// glideTo

fun void glideTo(float targetFreq[], dur glideDur)
{
    float startFreq[8];

    for (0 => int i; i < 8; i++)
    {
        chordNote[i].freq() => startFreq[i];
    }

    for (1 => int j; j <= 100; j++)
    {
        j / 100.0 => float step;

        for (0 => int i; i < 8; i++)
        {
            if (i < targetFreq.size())
            {
                Std.ftom(startFreq[i]) + (Std.ftom(targetFreq[i]) - Std.ftom(startFreq[i])) * step => float pitch;
                Std.mtof(pitch) => chordNote[i].freq;
            }
            else
            {
                0.12 * (1.0 - step) => chordNote[i].gain;
            }
        }

        glideDur / 100 => now;
    }
}

// jumpTo

fun void jumpTo(float targetFreq[])
{
    for (0 => int i; i < 8; i++)
    {
        if (i < targetFreq.size())
        {
            targetFreq[i] => chordNote[i].freq;
            0.12 => chordNote[i].gain;
        }
        else
        {
            0 => chordNote[i].gain;
        }
    }
}

// SECTION 1.1

for (0 => int i; i < 8; i++)
{
    C1 => chordNote[i].freq;
}

[Ab1, Ab2, Eb3, Bb3, C4, Eb4, G4, G5] @=> float targetFreq[];
glideTo(targetFreq, 10::second);
2::second => now;

[G1, G2, F3, B3, Eb4, G4, G5] @=> targetFreq;
glideTo(targetFreq, 10::second);
2::second => now;

[C2, C3, G4, Bb4, C5, Eb5, G5, G6] @=> targetFreq;
glideTo(targetFreq, 10::second);
6::second => now;

[Bb1, Bb2, F3, C4, Db4, Eb4, Ab4, Ab5] @=> targetFreq;
glideTo(targetFreq, 5::second);
1::second => now;

[Eb1, Eb2, Eb3, Bb3, Db4, F4, Ab4, Ab5] @=> targetFreq;
jumpTo(targetFreq);
3::second => now;

// SECTION 1.2

[Ab1, Ab2, Eb3, Bb3, C4, Eb4, G4, G5] @=> targetFreq;
glideTo(targetFreq, 10::second);
2::second => now;

[G1, G2, F3, B3, Eb4, G4, G5] @=> targetFreq;
glideTo(targetFreq, 10::second);
2::second => now;

[C1, C2, G3, Bb3, C4, Eb4, G4, G5] @=> targetFreq;
jumpTo(targetFreq);
6::second => now;

[Bb1, Bb2, F3, C4, Db4, Eb4, Ab4, Ab5] @=> targetFreq;
glideTo(targetFreq, 5::second);
1::second => now;

[Eb1, Eb2, Eb3, Bb3, Db4, F4, Ab4, Ab5] @=> targetFreq;
glideTo(targetFreq, 5::second);
1::second => now;

// SECTION 2.1

// CHORD 1

[Ab1, Ab1, Ab1, Ab1, Ab1, Ab1, Ab1, Ab1] @=> targetFreq;
glideTo(targetFreq, 24::second);
0::second => now;

[Ab1, Ab1, Ab1, Ab1, Ab1, Ab1, Ab1, Ab2] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[Ab1, Ab1, Ab1, Ab1, Ab1, Ab1, Ab2, Eb3] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[Ab1, Ab1, Ab1, Ab1, Ab1, Ab2, Eb3, Bb3] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[Ab1, Ab1, Ab1, Ab1, Ab2, Eb3, Bb3, C4] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[Ab1, Ab1, Ab1, Ab2, Eb3, Bb3, C4, Eb4] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

[Ab1, Ab2, Eb3, Bb3, C4, Eb4, G4, G5] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

// CHORD 2

[G1, G1, G1, G1, G1, G1, G1, G1] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

[G1, G1, G1, G1, G1, G1, G1, G2] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[G1, G1, G1, G1, G1, G1, G2, F3] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[G1, G1, G1, G1, G1, G2, F3, B3] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[G1, G1, G1, G1, G2, F3, B3, Eb4] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[G1, G1, G1, G2, F3, B3, Eb4, G4] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

[G1, G1, G2, F3, B3, Eb4, G4, G5] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

// CHORD 3

[C2, C2, C2, C2, C2, C2, C2, C2] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

[C2, C2, C2, C2, C2, C2, C2, C3] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[C2, C2, C2, C2, C2, C2, C3, G4] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[C2, C2, C2, C2, C2, C3, G4, Bb4] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[C2, C2, C2, C2, C3, G4, Bb4, C5] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[C2, C2, C2, C3, G4, Bb4, C5, Eb5] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

[C2, C3, G4, Bb4, C5, Eb5, G5, G6] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

// CHORD 4

[Bb1, Bb1, Bb1, Bb1, Bb1, Bb1, Bb1, Bb1] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

[Bb1, Bb1, Bb1, Bb1, Bb1, Bb1, Bb1, Bb2] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[Bb1, Bb1, Bb1, Bb1, Bb1, Bb1, Bb2, F3] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[Bb1, Bb1, Bb1, Bb1, Bb1, Bb2, F3, C4] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[Bb1, Bb1, Bb1, Bb1, Bb2, F3, C4, Db4] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[Bb1, Bb1, Bb1, Bb2, F3, C4, Db4, Eb4] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

[Bb1, Bb2, F3, C4, Db4, Eb4, Ab4, Ab5] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

// CHORD 5

[Eb1, Eb1, Eb1, Eb1, Eb1, Eb1, Eb1, Eb1] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

[Eb1, Eb1, Eb1, Eb1, Eb1, Eb1, Eb1, Eb2] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[Eb1, Eb1, Eb1, Eb1, Eb1, Eb1, Eb2, Eb3] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[Eb1, Eb1, Eb1, Eb1, Eb1, Eb2, Eb3, Bb3] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[Eb1, Eb1, Eb1, Eb1, Eb2, Eb3, Bb3, Db4] @=> targetFreq;
glideTo(targetFreq, 1::second);
1::second => now;

[Eb1, Eb1, Eb1, Eb2, Eb3, Bb3, Db4, F4] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;

[Eb1, Eb2, Eb3, Bb3, Db4, F4, Ab4, Ab5] @=> targetFreq;
jumpTo(targetFreq);
2::second => now;
