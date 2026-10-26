# Week 6 Notes: Unit Generators, Envelopes, and Filters

## Envelope

**Impulse**: only generates a signal when you tell it to, and only for one sample. It generates 0s after that.

## Filters

- **ResonZ**: emphasizes one frequency above all others.
- **PitchShift**: `1.0` means don't shift at all, greater than 1 means shift up, less than 1 means shift down. `0.5` would be one octave lower, since it's half the pitch.

### Types of Reverb

- **PRCRev**: saves on processing, named after Perry Cook.
- **JCRev**: named after John Chowning.
- **NRev**: the best sound and most complex.

## Mandolin

Uses 2 delays. `0.5` is a natural mandolin body. Pluck position: `0.5` is the middle of the string, `1` is one end, `0` is the other end.

## Modal Bar

Set the preset with an integer between 0 and 8, to call instruments like vibraphone, woodblock, or log bell. It also has strike position (like pluck position on the mandolin), and can change damping. With instruments like maraca, you can control the resonance by sending frequency.
