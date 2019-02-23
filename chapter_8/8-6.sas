*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 6
2/22/2019
;

data log_set_increment;

*Use a DO loop to print the number(incremented by 5) and it's log;
do N = 5 to 100 by 5;
	LogN = LOG(N);
	output;
end;

title "Listing of N and LogN increment by 5";
proc print data = log_set_increment NOOBS;
run;