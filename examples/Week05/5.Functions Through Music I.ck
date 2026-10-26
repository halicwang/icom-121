// global variables
8 => int k;
// Function 
fun int myAdd( int x , int y) // x is a local variable
{
    // Two inputs locally known as x and y
    // returns an integer
    
    int result; // variable to store final answer -- // int result only exists inside the function myAdd
    x+y => result; // add one to input x
    <<< k >>>; // we can access the GLOBAL variable k
    return result; // output final answer
    
} // The variables defined inside this curly braces are local ONLY to those braces


// MAIN PROGRAM
// anything defined in the main program is a GLOBAL variable
// call myAdd function

myAdd(k,12) => int answer; // variable K is copied into "x"- K being global
// print out answer to myAdd()
<<< answer >>>;
// variables result, x and y that are specific to function myAdd are not available
