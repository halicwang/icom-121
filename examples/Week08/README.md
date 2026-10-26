# Week 8 Notes: Concurrency and Multi-Threading

Concurrency = simultaneous.

**Shred**: a single strand/thread of logic or code. A shred is created by sporking functions.

A parent shred sporks child shreds. If the parent shred reaches its end, it takes its children with it.

- A shred is a ChucK process: a thread of logic, a single sequence of instructions.
- `spork` is used to run a function on a new shred.
- Shreds don't necessarily need to know about each other. They only need to deal with time locally.
- There's no limit on the number of shreds (spork away!).
- Parent shreds must be kept alive to keep their child shreds running.

## Machine Commands

| Command | Description |
|---|---|
| `Machine.add(string filePath) => int ID` | Sporks a program at a given file path, returns an identifier |
| `Machine.remove(int ID)` | Removes a shred with the given identifier |
| `Machine.replace(int ID, string filePath)` | Replaces a shred with a new program |
