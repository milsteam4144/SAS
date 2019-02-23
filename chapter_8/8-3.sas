*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 3
2/22/2019
;

data Test;
input Score1-Score3;

*Use the SUM function as a counter;
Subj +1;

datalines;
90 88 92
75 76 88
88 82 91
72 68 70
;

title "Listing of Test using SUM as a counter";
proc print data = Test NOOBS;
run;