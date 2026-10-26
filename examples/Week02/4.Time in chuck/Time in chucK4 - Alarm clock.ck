now + 5::second => time later;

while( now < later)
{
    <<<"time left:" , (later-now)/second >>>;
    1::second => now;
}

<<< "It's TIME!!" >>>;

SinOsc foo => dac; 
880 => foo.freq;
2::second => now;

