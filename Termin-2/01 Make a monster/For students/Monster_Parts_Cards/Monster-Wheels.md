---
title: Scratchkortd - Hjul
level: Nivå 4
language: no-NB
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Sjekkliste { .check}

+ For å få et hjul til å bevege seg, kan vi **rotere** det litt av gangen og
	 flytte det når vi mottar en
	 **bevegelsesmelding**.

```blocks
when I receive [moved left v]
change x by ((move speed) * (-1))
turn ccw (15) degrees

when I receive [moved right v]
change x by (move speed)
turn cw (15) degrees
```

+	 Hvis du vil, kan du erstatte
	 verdiene med variabler som `move speed`{.blockorange}, slik at du kan kontrollere hastigheten i alle
	 retninger fra ett sted.

**(Merk at vi har multiplisert moveSpeed med -1 for å få negativ verdi?)**
