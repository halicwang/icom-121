// sound chain
SinOsc s => dac;
SinOsc t => dac;
SinOsc u => dac;

// function
fun float octave( float originalFreq)
{
    // calculate octave of input frequency
   return(originalFreq*2);
}
// we can call the variable with the same name, because originalFreq is local to the previous function
fun float fifth( float originalFreq)
{
    return(originalFreq*1.5);
    }

// MAIN PROGRAM
//loop
for( 20 => float i; i < 500; i + .5 => i)
{
    i => s.freq;
    octave(i) => t.freq;
    fifth(i) => u.freq;
    <<< s.freq(), t.freq(), u.freq() >>>;
    10::ms => now;
}