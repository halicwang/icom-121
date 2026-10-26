// Human interface device

Hid hid;
// a message to convey data from Hid
HidMsg msg;
// device number
0 => int device;

// try to open keyboard
if (hid.openKeyboard( device ) == false ) me.exit();
// print
<<< "keyboard:", hid.name(), "ready!" >>>;

// sound chain
BeeThree organ => JCRev reverb => dac;
// set params
0.05 => reverb.mix;

while (true)
{
    // wait for event
    hid => now;
    
    // get message
    while (hid.recv( msg) )
    {
        // check 
        if ( msg.isButtonDown() )
        {
            <<< "BUTTON DOWN:", msg.ascii >>>;
            // take ascii value convert to freq
            msg.ascii => Std.mtof => float freq;
            if (freq > 20000 ) continue;
            
            // set the frequency
            freq => organ.freq;
            
            //sound the note
            1 => organ.noteOn;
            
            80::ms => now;
        }
        else // should be a button up event
        {
            <<< "BUTTON UP:", msg.ascii >>>;
            1 => organ.noteOff;
            
        }
    } 
}