dac => Gain g => blackhole; // lets samples through

while(true) // infinite time loop   
{
    // detect if there is relevant sound at the input
    if (adc.last() > 0.9) // last takes the last sample that came into the mic
    {
        <<< "Loud!!!", adc.last()>>>;
    }
    1.0:: samp => now;
}