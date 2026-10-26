// sound chain
SndBuf mySound => dac;

// directory of this file

me.dir() => string path;
<<< path >>>;

//define the filename
"/audio/snare_01.wav" => string filename;
path + filename => filename;
<<< filename >>>;

//open up a soundfile
filename => mySound.read;

// simple control
.5 => mySound.gain; // set volume
0 => mySound.pos; // sets playhead position
1 => mySound.rate; /// set rate --> original speed of the file is 1
1::second => now;


