---
title: Frantic Felix - Opptak
level: Nivå 6
language: nb-NO
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Sjekkliste { .check}

1.  Klar!

    Trykk på Lag en Liste for å lage en ny liste.

    ![](variable.png)


2.  Prøv denne koden
 
    Tøm listen før du starter.

    ```scratch
    when flag clicked
    delete (all v) of [notes v]
    ```

3.  Hver gang noe skjer, legg det til listen.

    ```scratch
    when this sprite clicked
    play note (pitch) for (0.5) beats
    add (pitch) to [notes v]

    ```

4.  If you want to record several things, use one list for each.

    ```scratch
    when [space v] key pressed
    move (10) steps
    add (x position) to [xs v]
    add (y position) to [ys v]

    ```

6. See the “Play back a sequence” card for how to replay what you’ve recorded.
