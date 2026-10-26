# Week 2 Notes: Intro to ChucK, Data Types, Time, and Control Structures

## What is ChucK

ChucK controls sound around time. It's designed around time, with parallel logic, simple text that's easy to read, and its own quirks and personality.

## Numbers

- Integers: no decimal point (written as `int` in code)
- Floating points: has a decimal point

## Data Types

| Type | Description | Example |
|---|---|---|
| `int` | Integer, no decimal | `34` |
| `float` | Floating point, has a decimal | `2.23` |
| `string` | A string of characters | `"hello"`, `"data/sound.wav"` |
| `dur` | ChucK-ian duration | `1::second`, `20::ms` |
| `time` | ChucK-ian time, in samples | |

`=>` is the ChucK operator, read as "chuck in something."

When there's an error, check the line before and after the line shown in red in the console monitor.

## Time and Duration

`time` and `dur` are native types, like `int` and `float`. You can declare variables to store values and use them to perform a rhythmic value.

- **TIME**: a point in time, when ChucK has actually started
- **DUR**: a length of time

Duration example: `2::second + .5::second`

| Unit | Meaning |
|---|---|
| `samp` | 1 digital sample in ChucK |
| `ms` | 1 millisecond |
| `second` | 1 second |
| `minute` | 1 minute |
| `hour` | 1 hour |
| `day` | 1 day |
| `week` | 1 week |

`now` is a special time variable.

Properties of `now`:
- When read: gives you the current ChucK time
- When modified: moves time forward in ChucK

Working with `now`:
- Chucking a duration to `now` advances ChucK time precisely by that amount, while automatically suspending your code and letting sound generate.
- `now` will never move forward unless/until you manipulate it, so until you explicitly advance time, you're working at a single point in time.
- Another way to think about it: ChucK waits, precisely, until `now` becomes the time you want to reach.

## If / Else

A condition that runs a block of code only when it evaluates to true (and another block when it doesn't).

## For / While

**For**: usually initializes a variable that helps trigger the loop, checks a condition, and if it's true, executes the block of commands. After that's done, it goes back and updates the variable it initialized. At some point the condition will no longer be true, and the program continues.

`for()` has three parts inside the parentheses:
- `for(0 => int i; ...)`: the initialization, runs just once
- `for(...; i < 4; ...)`: the condition, checked each time (here, if `i` is less than 4)
- `for(...; ...; i++)`: the updater

`i++` is shorthand for `i + 1 => i`.

**While**: we initialize outside the while loop, check a condition, and if it's true, we execute a block of commands. Inside that block, we update the variable. We keep looping until the condition is no longer true.
