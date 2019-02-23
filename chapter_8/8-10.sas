*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 10
2/22/2019
;

data speed_read;
*Using the do and @ statements to correlate variables;


do Method = 'Method_A', 'Method_B', 'Method_C';
	do Subj = 1 to 10;
	input speed@;
		output;
	end;
end;

	
datalines;
250 255 256 300 244 268 301 322 256 333
267 275 256 320 250 340 345 290 280 300
350 350 340 290 377 401 380 310 299 399 
;

title "Listing of speed_read";
proc print data = speed_read NOOBS;
run;
