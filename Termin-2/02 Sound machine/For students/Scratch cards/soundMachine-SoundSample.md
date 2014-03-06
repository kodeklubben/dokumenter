---
title: Scratchkort - Lyd
level: Nivå 4
language: nb-NO
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Sjekkliste { .check}

+ Lag en ny figur og se om du klarer å få den til å se ut som den lyden du vil lage.

+ I fanen `sounds`{.blocklightgrey} tab, lag en et nytt opptak eller importer en lydfil.
  ![cat sound sample](sound-sample.png)

+ Etter at du har trykket på figuren, `broadcast`{.blockbrown} det samme navnet som figuren
  din.
```blocks
when Cat clicked
broadcast [cat v]
```
+ Nå må vi spille `sound`{.blockpurple} når den får meldingen
  `broadcast`{.blockbrown}.
```blocks
when I receive [cat v]
play sound [cat v]
```

+ Til slutt, få figuren til å endre utseende når `sound`.{blockpurple}
  spilles.
```blocks
when I receive [cat v]
play sound [cat v]
set size to (110) %
wait (0.1) secs
set size to (100) %
```
