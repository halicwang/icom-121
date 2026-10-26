# Week 4 Notes: SndBuf, Reverse Playback, and Modulo

## Reverse Playback

To play a sound buffer in reverse, the position should start at the end, and the rate should be negative (`-1.0`).

`(numSamples - 1) => mySound.pos` — the `-1` needs to be added, per the forum discussion.

## Modulo

Modulo is a special type of division that gives you the remainder.

| Counter | Counter / 4 | Counter % 4 (remainder) |
|---|---|---|
| 4 | 1 | 0 |
| 5 | 1 | 1 |
| 6 | 1 | 2 |
| 7 | 1 | 3 |
| 8 | 2 | 0 |
| 9 | 2 | 1 |
| 10 | 2 | 2 |
| 11 | 2 | 3 |
| 12 | 3 | 0 |
