OscOut oout;
oout.dest("localhost", 6449);

while (true)
{
    oout.start("/playNote");
    
    oout.add(Math.random2(48,72)); // midi note
    oout.add(Math.random2f(0.5,1.0)); // gain
    // oout.add("mandolin") 
    
    oout.send();
    
    0.5::second => now;
    
    oout.start("/drums/snare");
    
    oout.add(Math.random2f(0.5,1.0)); // playback gain
    oout.add(Math.random2f(0.5,1.5)); // playback rate
    
    oout.send();
    
    0.5::second => now;
}