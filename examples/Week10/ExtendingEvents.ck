class TheEvent extends Event
{
    int pitch;
    float velocity;
}
// Generic Event
TheEvent e;

// sound chain
NRev reverb => dac;
.1 => reverb.mix;
// fun to spork 
fun void foo (StkInstrument instr, TheEvent e, string s)
{
    // connect instrument to reverb
    instr => reverb;
    
    while(true)
    {
        //wait
        e => now;
        // play 
        e.pitch => Std.mtof => instr.freq;
        e.velocity => instr.noteOn;
        
    }
    
}

//spork!!
spork ~ foo(new StifKarp, e, "hi" );
spork ~ foo(new Mandolin, e, "there" );
spork ~ foo(new Rhodey, e, "you" );
spork ~ foo(new Wurley, e, "come back here!" );

// wait
1::second => now;

while (true)
{  // set
    Math.random2(30,90) => e.pitch;
    Math.random2f(.2,.9) => e.velocity;
    // notify all subscribers of the event e  
    e.signal();
    // wait
    1::second => now;
}