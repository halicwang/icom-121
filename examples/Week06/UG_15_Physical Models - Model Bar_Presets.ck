// sound chain
ModalBar m => dac; // uses Resonant filters
while (true)
{
    1 => m.preset; // calling randomly different presets
    Math.random2f(200.0, 500.0) => m.freq;
    1 => m.noteOn;
    .5::second => now;
}