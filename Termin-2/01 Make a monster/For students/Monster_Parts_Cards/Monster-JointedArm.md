---
title: Scratchkort - Hengslede armer
level: Nivå 4
language: nb-NO
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Sjekkliste { .check}

+ En arm lages av **two sprites**, og de kan være ganske vanskelig å bygge siden de
to delene av armen må vite om hverandre, slik at de ikke skilles
og blir seende rart ut. Dette kan gjøres med matematiskeberegninger som kalles
**trigonometri**, noe som regelmessig brukes i produksjon av dataspill, roboter og
andre kule teknologier. **Vår første arms sprite er overarmen**, som ikke er så vanskelig,
da den ganske enkelt vil rotere ved skulderen og
flytte seg med kroppen og de andre
kroppsdelene. En ting vi må legge til er
å sette retningen `direction`{.blockblue} til armen i en
variabel (mer om det seinere).
```blocks
when [space v] key pressed
turn cw (15) degrees
set [left arm v] to (direction)
broadcast [moved v]
change x by (move speed)
```
+ Den neste beregningen brukes for å kontrollere underarmen.
	 **underarmen**. Her bruker vi trigonometri for å beregne hvor underarmen
	 bør plasseres (Det kan godt være at du trenger å be om hjelp når du skal gjøre dette).
```blocks
when I receive [moved v]
go to [Sprite3 v]
go to x: ((x position) + ((45) * ([sin v] of (left arm)))) y: ((y position) + ((45) * ([cos v] of (left arm))))
```
+ Først oppdateren armen vår når meldingen `moved`{.blockbrown} blir brukt, men du kan
	 bruke hvilken som helst melding, så lenge overarmen sender den eller flytter til samme
	 medling som underarmen.
+	 Så flytter underarmen seg selv til **senterpunktet** av overarmen, dette
     dette er punktet hvor toppen av overarmen er festet til skulderen.
     Vi vil så flytte underarmen slik at den møter overarmen.
	 Tenk deg at vi tegner en sirkel mens overarmen roterer rundt skulderen,
	 hva er så radius på den sirkelen? Armen i dette eksemplet er
	 circa **45 pixeler** lang.
	 Vi trenger å finne ut hva punket i den andre enden av armen
	 er, og posisjonerer underarmen vår der. Kan kan bruke trigonometri formelen over for å
	 reposisjonere underarmen og lage en albue.

