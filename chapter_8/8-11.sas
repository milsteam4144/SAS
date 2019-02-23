*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 11
2/22/2019
;

data city_temps;
*Using nested DOs and @ statements to correlate variables;

do City = 'Dallas', 'Houston';
	do Hour = 1 to 24;
	input Temp@;
		output;
	end;
end;

	
datalines;
80 81 82 83 84 84 87 88 89 89
91 93 93 95 96 97 99 95 92 90 88
86 84 80 78 76 77 78
80 81 82 82 86
88 90 92 92 93 96 94 92 90
88 84 82 78 76 74
;

title "Listing of Cities and Hourly Temperatures";
proc print data = city_temps NOOBS;
run;