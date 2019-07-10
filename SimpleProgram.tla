--------------------------- MODULE SimpleProgram ---------------------------

EXTENDS Integers
VARIABLES i, pc
Init == (pc = "start") /\ (i = 0)

Pick ==  \/ /\ pc = "start"
            /\ i' \in 0..1000
            /\ pc' = "middle"

Add1 ==  \/ /\ pc = "middle"
            /\ i' = i + 1
            /\ pc' = "done"

Next == Pick \/ Add1
====================================================
\* Modification History
\* Last modified Wed Jun 26 13:00:27 PDT 2019 by moshea
\* Created Wed Jun 26 12:30:16 PDT 2019 by moshea
