// sound chain
SqrOsc s => dac;

// Array declaration (2nd way)
// A array and Notes array are the same length
[54, 56, 62, 54, 48, 50, 52] @=> int A[];
[.5,.2,.4,.6,.5,.3,.4] @=> float notes[];

// A.cap() is the max number of elements in A[]
<<<A.cap()>>>; // stands for capacity (7 was printed)

// loop

for ( 0 => int i; i < A.cap(); i++)
{
    <<< i, A[i] >>>; // print index and value
    Std.mtof(A[i]) => s.freq; // MIDI To frequency
    notes[i]::second => now; //advance time
}

