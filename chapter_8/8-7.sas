*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 7
2/22/2019
;

data plotit;

*Use a DO loop and SGPLOT to display a graph of the values
resulting from the algorithm;

do X = 0 to 10;
	Y = 3*X**2 - 5*X+10;
	output;
end;
run;

title "Problem 7";
*PROC SGPLOT;
proc sgplot data = plotit;
	series X=X Y=Y;
run;
