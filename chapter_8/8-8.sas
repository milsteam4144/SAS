*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 8
2/22/2019
;

data Logitplot;

*Use a DO loop and SGPLOT to display a graph of the values
resulting from the algorithm;

do p = 0 to 1 by .05;
	Logit = LOG(p/(1-p));
	output;
end;
run;

title "Logit Plot";
*PROC SGPLOT;
proc sgplot data = Logitplot;
	series X=p Y=Logit;
run;