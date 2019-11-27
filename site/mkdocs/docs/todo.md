# To-Do List 

## Improve coding

- rewrite classes that do not yet support the [coding guidelines](https://github.com/grame-cncm/guidolib/wiki/Guidelines),
- segment methods that are too long into functional sub-methods,
- improve the design for a more functional approach i.e. mainly avoiding side effects,
- mark const methods that can be
- put private the methods and fields that can be private (or that are close to)


## Design

- improve chords handling : currently there is no chord object, a chord is actually a series of notes framed by `empty` elements and the musical information is split between notes and empty. A ARChordTag and a GRChordTag exist but they seem to correspond to an obsolete \chord tag and to be never used.


## Issues

- you can also contribute by taking any [open issues](https://github.com/grame-cncm/guidolib/issues) in charge.