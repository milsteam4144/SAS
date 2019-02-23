*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 4
2/22/2019
;

data Missing;
input A B C;

*Use SUM as a counter with the MISSING statement to count the
missing variables;
if missing(A) then MissA + 1;
if missing(B) then MissB + 1;
if missing(C) then MissC + 1;
run;