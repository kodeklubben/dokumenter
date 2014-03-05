---
title: Frantic Felix - Avspilling
level: Nivå 6
language: nb-NO
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Sjekkliste { .check}

1.  Klar!
    
    Trykk Lag en Variabel for å lage en index variabel
    
    ![](variable.png)


2.  Prøv denne koden
    
    Få figuren til å følge stien som ble tatt opp.

    ```scratch 
    when I receive [replay v]
    set [index v] to [1]
    repeat (length of [xs v])
        set x to (item (index) of [xs v])
        set y to (item (index) of [ys v])
        change [index v] by (1)
        wait (0.1) secs
    
    ```
