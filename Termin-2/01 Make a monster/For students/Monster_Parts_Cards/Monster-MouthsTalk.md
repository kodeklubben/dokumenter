---
title: Scratchkort - Munn som prater
level: Nivå 4
language: nb-NO
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Sjekkliste { .check}

+ For å få monstret til å snakke, kan du bruke
	 `Say`{.blockpurple} sprite.
```blocks
when [space v] key pressed
say [Hello!] for (2) secs
```
+	 For å gjøre det litt mere imponerende, kunne du
	 få monstret til å **åpne** og **lukke munnen**
	 mens det prater. For å gjøre dette, rediger spriten
	 som inneholder munnen  - opprett et nytt
	 `costume`{.blockpurple} som har lukket munn.
	 Ved å bytte mellom de to, kan du animere
	 at munnen åpner og lukker seg.
```blocks
repeat (8)
	wait (0.1) secs
	switch to costume [mouthClosed v]
	wait (0.1) secs
	switch to costume [mouthOpen v]
end
```
+ For å koble de to sammen, få `say`{.blockpurple} blokken til å sende en melding som den andre blokken kan reagere på.

```blocks
when [space v] key pressed
broadcast [talk v]
say [Hello!] for (2) secs

when I receive [talk v]
repeat (8)
	wait (0.1) secs
	switch to costume [mouthClosed v]
	wait (0.1) secs
	switch to costume [mouthOpen v]
end
```

+	 For å gjøre det litt mere fleksibelt, bruk en
	 variabel for å kontrollere `talkTime`{.blockorange} hvor lenge
	 monstret sier noe, og for å kontrollere
	 hvor mange gannger animasjonsløkken er
	gjentatt.

```blocks
when [space v] key pressed
set [talkTime v] to (2)
broadcast [talk v ]
say [Hello!] for (talkTime) secs

when [a v] key pressed
set [talkTime v] to (4)
broadcast [talk v]
say [Something a bit longer] for (talkTime) secs

when I receive [talk v]
repeat ((talkTime) * (4))
	wait (0.1) secs
	switch to costume [mouthClosed v]
	wait (0.1) secs
	switch to costume [mouthOpen v]
end
```
**(Merk at vi multipliserer talkTime med 4 for
å være sikke på at løkken gjentas nok
ganger?)**

+ Du kan også få monstret ditt til å si
	 lyder ved å bruke en av lydklokkene. Husk å
	 importer lydene i lydfanen.

```blocks
when I receive [talking v]
play sound [Screech v]
```
**Prøv å legg til lyder til andre hendelser, du kan bruke en skummel svevende
lyd for et spøkelse som flyer rundt på skjermen! Har du mikrofon på
datamaskinen kan du ta opp dine egne lyder, overrask de andre ved å
ta opp et høyt monster BRØØØØØØØØØL!!!**
