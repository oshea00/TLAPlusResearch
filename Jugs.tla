-------------------------------- MODULE Jugs --------------------------------
EXTENDS Integers
VARIABLES small, big

TypeOK == /\ small \in 0..3
          /\ big \in 0..5

Init == /\ small = 0
        /\ big = 0

FillSmall == /\ small' = 3
             /\ big' = big

FillBig == /\ big' = 5
           /\ small' = small
           
EmptySmall == /\ small' = 0
              /\ big' = big
              
EmptyBig == /\ big' = 0
            /\ small' = small

SmallToBig == IF big + small <= 5 
              THEN /\ big' = big + small
                   /\ small' = 0
              ELSE /\ big' = 5
                   /\ small' = small - (5 - big)

BigToSmall == IF big + small <= 3
              THEN /\ small' = big + small
                   /\ big' = 0
              ELSE /\ small' = 3
                   /\ big' = big - (3 - small) 

Next == \/ FillSmall
        \/ FillBig
        \/ SmallToBig
        \/ BigToSmall
        \/ EmptySmall
        \/ EmptyBig

=============================================================================
\* Modification History
\* Last modified Wed Jun 26 15:39:31 PDT 2019 by moshea
\* Created Wed Jun 26 13:13:33 PDT 2019 by moshea
