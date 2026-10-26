//sound network
SinOsc s => dac;

//initialize variable outside the loop: variable i
20 => int i;

while( i < 400 )
{
    // set frequency
    i => s.freq;
    //print i
    <<< "i" >>>;
    0.01::second => now;
    //update inside the loop
    i++;
}
