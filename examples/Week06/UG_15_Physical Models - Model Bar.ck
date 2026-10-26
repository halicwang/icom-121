// sound chain
ModalBar m => dac; // uses Resonant filters
while (true)
{
    Math.random2(0,8) => m.preset; // calling randomly different presets
    Math.random2f(200.0, 1000.0) => m.freq;
    1.0 => m.noteOn;
    0.1::second => now;
}