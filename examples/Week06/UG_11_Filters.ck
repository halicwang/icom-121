// sound chain
Impulse imp => ResonZ filt => dac;// excite the filter with an Impulse
// this filter needs a high value on the impulse to excite it in the "imp.next" value
800.0 => filt.freq;
200 => filt.Q;


while (true)
{
    
    200.0 => imp.next; // It will generate a 1, for one sample, and then it will generate 0s until we tell it to do something different.
    Math.random2f(1000, 3000) => filt.freq;
Math.random2f(0.05, 0.02)::second => now;

}