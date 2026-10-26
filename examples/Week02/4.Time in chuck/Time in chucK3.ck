// chain of sound objects
SinOsc foo => dac;

//infinite time loop

while( true )
{
    //randomly choose frequency from 30 to 1000
    Math.random2f(30, 1000) => foo.freq;
    //advance time by 100 millisecond
    100::ms => now;
}