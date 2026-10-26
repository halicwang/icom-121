fun void foo()
{
    while (true)
    {
        <<<"foo!", "" >>>;
        250::ms => now;
    }
}
// Execute this function on a parallel shred of logic
// spork the function foo in a new shred
spork ~ foo();

while(true)
{
    <<< "BARRR!!", "" >>>;
    1::second => now;
}