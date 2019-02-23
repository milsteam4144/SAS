*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 7 Problem 2
2/2/2019
;

libname infile '/folders/myfolders/';

data Hosp;
*Read in the data set;
	set infile.Hosp;

*Print the observations using "OR";
proc print data = Hosp;
where Subject = 5 or Subject = 100 or Subject = 150 or Subject = 200;

*Print the observations using "IN";
proc print data = Hosp;
where Subject in (5, 100, 150, 200);


