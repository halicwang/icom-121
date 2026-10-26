//sound chain

SinOsc s => Pan2 p => dac;

// initialize pan position value

1.0 => float panPosition;

//loop
while( panPosition > -1.0 )
{
    panPosition => p.pan; // pan value
    <<< panPosition >>>;
    panPosition -.01 => panPosition;
    0.1::second => now; // advance time
    }