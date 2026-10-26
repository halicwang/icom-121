// ADC and Dac are two of the most important unit generators
adc => Gain g => dac; // never chuck adc directly in to dac


// Blackhole --> is like dac, but does not make any sound
// you can use blackhole to draw samples, and use them without hearing them straight out of the DAC
adc => Gain g => blackhole;