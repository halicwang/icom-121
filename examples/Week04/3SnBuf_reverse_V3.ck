// sound chain
SndBuf mySound => dac;
 
// create path name as a string
me.dir() + "/Audio/snare_01.wav" => string filename; // shortcut to create the path all in one line

filename => mySound.read;
// find number of samples
mySound.samples() => int numSamples;

// infinite loop
while ( true) 
{
    (numSamples-1) => mySound.pos; // set playhead position
    -1.0 => mySound.rate; // set rate - negative for reverse
    1::second => now;
    }
    