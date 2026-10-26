// sound chain
Shakers shak => dac;

17 => shak.preset; // quarters in a mug

while( true )
{
    Math.random2f(0.0, 128.0) => shak.objects; // it picks statistically the number of objects that are inside this coffee mug
    Math.random2f(0.0, 1.0) => shak.decay; // controls the amount of damping in the system
    1.0 => shak.energy; // adding energy to the shaker, we don't always set it to 1, because we don't want to reset every time, but keep the last setting and see how it changes
    1.0::second => now;
}