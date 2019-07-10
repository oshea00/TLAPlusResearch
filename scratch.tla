------------------------------ MODULE scratch ------------------------------
EXTENDS Naturals
VARIABLES x, pc

Init == (pc = "start") /\ (x = 5)

PickX ==  /\ x' = [n \in Nat |-> n^2]
          /\ pc = "done"

Next == PickX

=============================================================================
\* Modification History
\* Last modified Thu Jun 27 17:23:18 PDT 2019 by moshea
\* Created Thu Jun 27 16:41:44 PDT 2019 by moshea
