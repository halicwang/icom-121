//sound chain
Noise n  => Pan2 p => dac;
0.01 => n.gain;
//infinite loop
while( true )
{
    //  the pan moves like a sine wave
    Math.sin(now/1::second*2*pi) => float pannumber;
    <<< pannumber >>>;
    pannumber => p.pan;
    
    10::ms => now;
}