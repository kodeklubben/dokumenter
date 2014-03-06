---
title: Scratchkort - Tromme
level: Nivå 4
language: nb-NO
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Sjekkliste { .check}

+ Importer en ny spirte og velg Ting -> Tromme. Gi den navnet “Tromme”.

+ Vi vil at trommen skal lage lyd når vi klikker på den eller trykker på
  `space`{.blockbrown} key.
```blocks
when Drum clicked
broadcast [drum v]

when [space v] key pressed
broadcast [drum v]
```

+ Nå må vi lage lyd når den mottar `tromme`{.blockbrown}. Du kan
  endre tallet hvis du vil endre lyden trommen skal lage.
```blocks
when I receive [drum v]
play drum (48 v) for (0.2) beats
```

+ Prøv å endre utseende slik at det er innlysende hvliet instrument som spiller.
```blocks
when I receive [drum v]
play drum (48 v) for (0.2) beats
set size to (110) %
wait (0.1) secs
set size to (100) %
```

