*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 5 Problem 3
2/7/2019
;

data Colors;
	input Color : $1. @@; *@@ prevents SAS from moving to a new line, allows for reading a stream of values on one line;
*Format the data in groups;
format Color $Group.;

datalines;
R R B G Y Y . . B G R B G Y P O O V V B
;

*Use a format to group the colors;
proc format;
value $Group
'R', 'B', 'G' = 'Group 1'
'Y','O' = 'Group 2'
'' = 'Not Given'
other = 'Group 3';
run;

*Show the grouped results;
title "Grouped Color Frequencies";
proc freq data = Colors;
tables Color / nocum missing; 
*NOCUM removes the cumulative frequencies and cumulative percentages from the results;

*MISSING treats missing values as valid non-missing values. It displays them in freq tables and includes them in calculations of percentages, etc.;
*For this dataset, it seems to add the missing('Not Given') and other('Group 3') together;
run;



