---
title: Scratchkort - Tentakler
level: Nivå 4
language: nb-NO
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Sjekkliste { .check}

+ For å få en tentakkel til å bevege seg, kan vi **rotere** den og **endre størrelse** ved å bruke `random`{.blockgreen} med en
	 lav verdi i en variabel, for så å
	 vente en et øyeblikk før vi går gjenoppretter
	den originale størrelsen.

```blocks
set [tentacleRotation v] to (pick random (1) to (10))
set [tentacleSize v] to (pick random (1) to (10))
change size by (tentacleSize)
turn ccw (tentacleRotation) degrees
wait (0.5) secs
change size by ((tentacleSize) * (-1))
turn cw (tentacleRotation) degrees
```

**(Merk at vi multipliserer tentacleSize med -1 for å få en negativ verdi?)**
