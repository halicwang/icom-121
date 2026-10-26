// Array declaration (1st way)

int A[7];
// 54 is the Midi number that we want to store in position "0" index number
54 => A[0]
56 => A[1]
62 => A[2]
54 => A[3]
48 => A[4]
50 => A[5]
52 => A[6]

// Array declaration (2nd way)
// no number inside the A
//@ --> we are making a list that is dynamic. That is part of the reason for this operation
[54, 56, 62, 54, 48, 50, 52] @=> int A[];