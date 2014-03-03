---
title: Scratchkort - Øyne
level: Nivå 4
language: nb-NO
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Sjekkliste { .check}

+ Du kan gi monstret ditt øyne som følger musepekeren rundt på skjermen. Monstretditt kan ha så mange øyne som du vil, til og med åtte, som en edderkopp! Siden vi alltid vil at monsterøynene skal følge musepekeren må vi sette `forever`{.blockyellow} blokken. Når **green flag** skriptet har startet vil vi at øynene skal peke i retningen av muspekeren `forever`{.blockyellow} og flytte seg hvert brøkdelssekund.

```blocks
when FLAG clicked
forever
	point towards [mouse pointer v]
	wait (0.2) secs

when I receive [moved right v]
change x by (move speed)

when I receive [moved left v]
change x by ((move speed) * (-1))
```

**Merk at vi ogå bruker kringkasting for å flytte øynne sammen med koppen og andre kroppsdeler. Er det noe annet du kan få øynene til å gjøre? Hvis du flytter muspekeren mellom monstrets øyne, så går øynene i kryss!**
