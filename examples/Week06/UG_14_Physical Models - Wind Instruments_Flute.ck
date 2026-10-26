// sound chain
Flute f => dac;

330 => f.freq;

while (true)
{
    1.0 => f.noteOn;// start blowing
    Math.random2f(0.1,1.0) => f.jetDelay; // models the propagation of blowing into the flute
    0.2::second => now;
    1 => f.noteOff;
    0.5::second => now;
    
}
