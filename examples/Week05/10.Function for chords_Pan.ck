// sound chain
TriOsc chord[3];
Pan2 master => dac;
for( 0 => int i; i < chord.cap(); i++)
{
    // use array to chuck unit generator to master
    chord[i] => Pan2 pchord => master;
    Math.random2f(-1.0,1.0) => pchord.pan;
    // dividing the gain by 3 = .3
    .1 => chord[i].gain;
}
// Function
fun void playChord( int root, string quality, float lenght)
{
    // function will make major or minor chords
    
    // root 
    Std.mtof(root) => chord[0].freq;
    // third
    if( quality == "major" )
    {
        Std.mtof(root+4) => chord[1].freq;
    }
    else if(quality == "minor")
    {
        Std.mtof(root+3) => chord[1].freq;
    }
    else
    {
        <<< "Must specify major or minor" >>>;
    }
    
    // fifth
    Std.mtof(root+7) => chord[2].freq;
    lenght::ms => now;
}

// MAIN PROGRAM
.4 => master.gain;
// infinite loop
while( true)
{
    playChord(Math.random2(60,72), "minor", 250);
    playChord(Math.random2(60,72), "major", 500);
    playChord(Math.random2(60,72), "minor", 250);
}  