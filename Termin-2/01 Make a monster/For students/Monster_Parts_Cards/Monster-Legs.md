---
title: Scratchkort - Bein
level: Nivå 4
language: nb-NO
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Sjekkliste { .check}

+ Ved å bruke to **bein sprites** kan gi få monstret vårt
	 til å gå. For å gjøre dette lager vi en
	 **variabel** som bytter mellom de to tilstandene, en for
	 når beinet peker forover og en annen når beinet går
	  bakover (vi bytter om på tilstandene for det andre
	 beinet). For å gjøre dette må vi først laget `step`{.blockorange}
	 variabel, så hver gang vår bevegelse medling
	mottas, **øker vi variablen med en**. Hvis
	 variablen går høyere enn én (vi kan teste dette
	 med større enn operatøren `>`{.blockgreen}) nullstiller vi den
	tilbake til **null**.

```blocks
when FLAG clicked
set [move speed v] to [5]
set [step v] to [0]

when I receive [moved left v]
change [step v] by [1]
if < (step) > [1] >
	set [step v] to [0]
end

when I receive [moved right v]
change [step v] by [1]
if < (step) > [1] >
	set [step v] to [0]
end
```

+	 Nå kan vi sette beina i bevegelse ved å sjekke
	 vår `step`{.blockorange} variabel. **Når variablen
	 blir satt til null** kan vi bytte retning på
	 beinet (her at vi brukt en fast `direction`{.blockblue} for
	 å hindre at beinet går amokk hvis variablen og
	 graden på vinklen ikke stemmer, men kanskje vil
	 du at monstret skal gjøre det!). Ikke glem å flytt
	 beina dine langs kroppe ved å bruke
	 `move speed`{.blockorange} variabel.

```blocks
when I receive [moved right v]
change x by (move speed)
if < (step) = [0] >
	point in direction (180 v)
else
	point in direction (165 v)
end

when I receive [moved left v]
change x by ((move speed) * [-1])
if < (step) = [1] >
	point in direction (165 v)
else
	point in direction (180 v)
end
```

**Du kan bruke samme type handling for å lage
armer som vinker, eller fuglevinger som flakser.**
