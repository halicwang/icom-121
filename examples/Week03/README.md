# Week 3 Notes: Standard Library, Panning, and Arrays

## MIDI to Frequency

ChucK recognizes MIDI notes with decimals, and returns the frequency value relative to that. That means you can make microtonal compositions.

Built-in library methods:

- `Std.mtof(int value) -> float`: converts a MIDI note number to frequency (Hz). Note the capital "S" in `Std`.
- `Std.ftom(float value) -> float`: converts a frequency (Hz) to a MIDI note number.

(The combination of `Std.mtof` with the `.` in the middle is a method, and there are different types of these.)

## Panning

`Pan2` object: -1 is one side, 1 is the other side (a floating point range).

- `SinOsc` = a unit generator, a special object built into ChucK used to create sound.
- `Math.sin` = also generates a sine wave, but not at audio rate. A sine you'd use for parameter control instead.

## Arrays

A group of data put into a block of memory, strung together to make a "list" or "group" of data. Index data identifies data in an array, and it always starts at 0.

## Utility Functions

### Absolute Values

| Method | Output | Description |
|---|---|---|
| `Std.abs(int value)` | int | Returns absolute value of integer |
| `Std.fabs(float value)` | float | Returns absolute value of floating point number |
| `Std.sgn(float value)` | float | Computes sign of the input |

### Unit Conversion

Used for gain staging with oscillators.

| Method | Output | Description |
|---|---|---|
| `Std.powtodb(float value)` | float | Converts signal power ratio to decibels (dB) |
| `Std.rmstodb(float value)` | float | Converts linear amplitude to decibels (dB) |
| `Std.dbtopow(float value)` | float | Converts decibels (dB) to signal power ratio |
| `Std.dbtorms(float value)` | float | Converts decibels (dB) to linear amplitude |

### Strings

| Method | Output | Description |
|---|---|---|
| `Std.atoi(string value)` | int | Converts ASCII (string) to integer |
| `Std.atof(string value)` | float | Converts ASCII (string) to floating point value |
| `Std.itoa(int value)` | string | Converts integer to ASCII (string) |
| `Std.ftoa(float value)` | string | Converts floating point value to ASCII (string) |

### Random Number

| Method | Output | Description |
|---|---|---|
| `Math.random()` | int | Generates a random integer between 0 and `Math.RANDOM_MAX` |
| `Math.random2(int min, int max)` | int | Generates a random integer in the range (min, max) |
| `Math.randomf()` | float | Generates a random floating point number in the range (0, 1) |
| `Math.random2f(float min, float max)` | float | Generates a random floating point number in the range (min, max) |

### Math Library

| Method | Output | Description |
|---|---|---|
| `Math.hypot(float x, float y)` | float | Computes the Euclidean distance of the orthogonal vectors (x, 0) and (0, y) |
| `Math.pow(float x, float y)` | float | Computes x to the power of y |
| `Math.sqrt(float x)` | float | Computes the non-negative square root of x |
| `Math.exp(float x)` | float | Computes e^x, the base-e exponential of x |
| `Math.log(float x)` | float | Computes the natural logarithm of x |
| `Math.log2(float x)` | float | Computes the logarithm of x to base 2 |
| `Math.log10(float x)` | float | Computes the logarithm of x to base 10 |
| `Math.floor(float x)` | float | Rounds to the largest integral value not greater than x |
| `Math.ceil(float x)` | float | Rounds to the smallest integral value not less than x |
| `Math.round(float x)` | float | Rounds to the nearest integral value |
| `Math.fmod(float x, float y)` | float | Computes the remainder of x / y |
| `Math.min(float x, float y)` | float | Chooses the lesser of two values |
| `Math.max(float x, float y)` | float | Chooses the greater of two values |
| `Math.nextpow2(float x)` | int | Computes the smallest power of 2 greater than x |
| `Math.sin(float x)` | float | Computes the sine of x |
| `Math.cos(float x)` | float | Computes the cosine of x |
| `Math.tan(float x)` | float | Computes the tangent of x |
| `Math.asin(float x)` | float | Computes the arc sine of x |
| `Math.acos(float x)` | float | Computes the arc cosine of x |
| `Math.atan(float x)` | float | Computes the arc tangent of x |
| `Math.atan2(float x, float y)` | float | Computes the arc tangent of y/x |
| `Math.sinh(float x)` | float | Computes the hyperbolic sine of x |
| `Math.cosh(float x)` | float | Computes the hyperbolic cosine of x |
| `Math.tanh(float x)` | float | Computes the hyperbolic tangent of x |
