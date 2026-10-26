ModalBar one => dac.left;
ModalBar two => dac.right;

// set initial params
7 => one.preset;
4 => two.preset;
.9 => one.strikePosition => two.strikePosition;
60 => Std.mtof => one.freq;
64 => Std.mtof => two.freq;

fun void foo()
{
    while (true)
    {
        <<<"foo!", "" >>>;
        // note!
        1 =>one.strike;
        250::ms => now;
    }
}
fun void bar()
{
    while(true)
    {
        <<< "BARRR!!", "" >>>;
        //note!
        1 => two.strike;
        1::second => now;
    }
}
// Execute this function on a parallel shred of logic
// spork the function foo in a new shred
spork ~ foo();
spork ~bar();
//infinite time loop
// (to keep parent shred alive, in order for children to live)
while (true) 1::second => now;
