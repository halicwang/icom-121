// sound chain

SinOsc s => dac;

//Global variables
[60, 62, 63, 65, 63, 64, 65, 58, 57]@=> int A[];

// Function
fun void swell(float begin, float end, float grain)
{
    // this function is a volume sweller
    // swell up
    for(begin => float j; j < end; j+grain => j )
    {
        j => s.gain; // set volume
        .01::second => now; // advance time
    }
    // swell down
    for (end => float j; j > begin; j-grain => j )
    {
        j => s.gain;
        .01::second => now;
        }
}

// MAIN PROGRAM
//loop
for( 0 => int i; i < A.cap(); i++)
{
    Std.mtof(A[i]) => s.freq; // sets freq using array A
    swell(.4, .9,.03); // calls function to control volume
    .1::second => now; // advance time
}