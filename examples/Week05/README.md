# Week 5 Notes: Functions and Recursion

## Functions

If a function has no return type, it won't return anything: `function void funOne()`.

If the function has no inputs, that's a sign it's going to work with a global variable rather than a local one.

## Factorial / Recursion

Recursion works like a memory stack, building from the bottom up (from `factorial(4)` down to `factorial(1)`, then back up).

| Call | x | Equation | Answer |
|---|---|---|---|
| `factorial(1)` | 1 | 1 | 1 |
| `factorial(2)` | 2 | `2 * factorial(1)` | 2 |
| `factorial(3)` | 3 | `3 * factorial(2)` | 6 |
| `factorial(4)` | 4 | `4 * factorial(3)` | 24 |
