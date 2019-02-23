*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 12
2/22/2019
;

data financial;
Interest = .0425;
AcctBal = 1000;*Start the account with $1000;

*USING THE DO WHILE STATEMENT;

do until (AcctBal ge 30000);
	Year +1;
	AcctBal = AcctBal + Interest*AcctBal;
	output;
	AcctBal + 1000;*You deposit $1000 every year;
end;
format AcctBal dollar10.2;
run;
title "Compound Interest Goal of $30k";
proc print data = financial NOOBS;
var Year AcctBal;
run;