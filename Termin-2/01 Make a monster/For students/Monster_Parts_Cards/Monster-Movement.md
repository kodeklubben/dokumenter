---
title: Scratchkort - Bevegelse
level: Nivå 4
language: nb-NO
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Sjekkliste { .check}

+ Etterhver vil monstret ditt bestå av en menge **sprites** og det vil bli nødvendig å sørge for at
	 alle spritene flyttes sammen. Isteden for å legge til flyttkommandoer på alle
	 spriter, kan du rett og slett legge til kontroller på kroppsspriten og bruke en `broadcast`{.blockbrown}
	 for å kontroller andre spriter.
	 Når vår **Tentakkelsprite**
	 (eller en hvilken som helst annen
	 sprite!) mottar en
	 `moved right`{.blockbrown} melding,
	 kan vi flytte den til høyre
	også.

```blocks
// på spøkelseskroppen
when [right arrow v] key pressed
change x by (moveSpeed)
broadcast [moved right v]

when [left arrow v] key pressed
change x by ((moveSpeed) * (-1))
broadcast [moved left v]
```

```blocks
// på tentaklen

when I receive [moved right v]
change x by (moveSpeed)

when I receive [moved left v]
change x by ((moveSpeed) * (-1))
```

+ Ved å bruke en `broadcast`{.blockbrown} kan vi også endre hvordan bevegelseskommandoen
	 virker, ved å bare endre et
	skript. **Ta en titt på dette eksemplet:**

```blocks
// på spøkelseskroppen
when [right arrow v] key pressed
change x by (moveSpeed)
point in direction (90 v)
if on edge, bounce
if (not (touching [edge v]?))
	broadcast [moved right v]
	broadcast [moved v]
end

when [left arrow v] key pressed
change x by ((moveSpeed) * (-1))
point in direction (-90 v)
if on edge, bounce
if (not (touching [edge v]?))
	broadcast [moved left v]
	broadcast [moved v]
end
```

+ Her forteller vi at kroppen skal gå i den retningen det
	 beveger seg i (husk å sette sprite orienteringen
	til **“bare face venstre-høyre”**) og for å stoppe og snu
	 hvis det kolliderer med skjermkanten. Kan kanskje også
	 lagt merke til at vi har lagt meldingen
	 i en `if`{.blockyellow} blokk, vil vil bare at de andre kroppsdelene
	 skal bevege seg hvis kroppen ikke er i kanten av skjermen.
	 **Hvis du bestemmer deg for å legge til animasjon på
	 bevegelsen, må du huske på at tilhørende
	 bevegelser vil ta like lang tid. f. eks hvis å bevege et bein
	 til venstre tar 1 sekund, må
	 alle andre venstebevegelser ta et sekund også
	 (bruk en `wait`{.blockyellow} blokk for å sørge at de er i samme steg).**

+ Du kan også animere kroppspriten ved å bruke
	 `costume`{.blockpurple} endringer, som kan aktiveres
	 hver gang en bevegelesmelding mottas.

```blocks
when I receive [moved right v]
next costume
```

