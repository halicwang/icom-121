// Global variable
0 => int x;

// functions
function void funOne() // no input --> will work with Global variable
{
    x+1 => x; // add one to x
    1::second => now;
    <<< x >>>; // print x    
}

fun void funTwo()
{
    x-1 => x; // subtracting one from x
    1::second => now; // advance time
    <<< x >>>; // printing x
}

//MAIN PROGRAM
// infinite loop
while( true )
{
    funOne(); // execute funOne
    funTwo(); // Wait until funOne completes
    // then execute funTwo
}