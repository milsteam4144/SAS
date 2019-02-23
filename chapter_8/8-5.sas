*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 5
2/22/2019
;

data log_set;

*Use a DO loop to print the number and it's log;
do N = 1 to 20;
	LogN = LOG(N);
	output;
end;

title "Listing of N and LogN";
proc print data = log_set NOOBS;
run;
