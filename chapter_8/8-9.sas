*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 9
2/22/2019
;

data Temperatures;
*Using the do and @ statements to correlate two variables;

do Day = 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun';
	input Temp@;
	output;
	end;
	
datalines;
70 72 74 76 77 78 85
;

title "Listing of Temperatures";
proc print data = Temperatures NOOBS;
run;
