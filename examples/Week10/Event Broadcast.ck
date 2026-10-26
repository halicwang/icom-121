// Generic Event

Event e;
// fun to spork 

fun void foo (Event e, string s)
{
    while(true)
    {
        //wait
        e => now;
        // action
        <<< s >>>;
    }
    
}

//spork!!
spork ~ foo( e, "hi" );
spork ~ foo( e, "there" );
spork ~ foo( e, "you" );
spork ~ foo( e, "come back here!" );

// wait
1::second => now;

while (true)
{  
    // notify all subscribers of the event e  
    e.broadcast();
    // wait
    1::second => now;
}