class TestData 
{
    // Member variables
    1 => int myInt;
    0.0 => float myFrac;
    
    //Member function that adds the data
    fun float sum()
    {
        return (myInt + myFrac);
    }
}

TestData d;

<<< d.myInt, d.myFrac, d.sum() >>>;


// advance time
1::second => now;

// change the data
3 => d.myInt;
0.14158 => d.myFrac;

<<< d.myInt, d.myFrac, d.sum() >>>;
