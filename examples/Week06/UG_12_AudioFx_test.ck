// Raga Jam
// sound chain for sitar
Pan2 sitarBus => dac;
Sitar sitar => Gain sitarGain => Pan2 psitar => sitarBus;
sitarGain => Gain sitarFeedback => Delay delay => sitarGain;
// global variables
[62,63,65,67,69,70,72,74]@=> int raga[];

// timing parameter
1.0 => float beattime;

// sitar Feedback parameters
(beattime/2)::second => delay.max => delay.delay;
0.5 => sitarFeedback.gain;

while (true)
{
    
    for( 0 => int i; i<raga.cap(); i++)
    {
        //sitar control
        Std.mtof(raga[Math.random2(0,raga.cap()-1)]) => sitar.freq;
       Math.random2f(-0.5, 0.5) => psitar.pan;
        sitar.noteOn(Math.randomf());
        // advance time
        beattime::second => now;
    }
}
