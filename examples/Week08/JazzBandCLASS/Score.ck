//Score.ck

// Paths to chuck file
me.dir() + "/Piano.ck" => string pianoPath;
me.dir() + "/Bass.ck" => string bassPath;
me.dir() + "/Drums.ck" => string drumsPath;
me.dir() + "/Flute.ck" => string flutePath;

// start piano
Machine.add(pianoPath) => int pianoID;
4.8::second => now;

// start drums
Machine.add(drumsPath) => int drumsID;
4.8::second => now;

// start bass
Machine.add(bassPath) => int bassID;
4.8::second => now;

// start flute solo
Machine.add(flutePath) => int fluteID;
4.8::second => now;

// remove drums
Machine.remove(drumsID); 
4.8::second => now;

Machine.add(drumsPath) => drumsID; // drums ID variable was already declared
