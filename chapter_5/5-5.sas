*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 5 Problem 5
2/7/2019
;

libname malFmts '/folders/myfolders/mals_formats/';

*Tell SAS where you want to store the formats;
proc format library = malFmts;

value YesNo
	  1 = 'Yes'
	  0 = 'No';
	  
value $YesNo
      'Y' = 'Yes'
      'N' = 'No';
      
value $Gender
      'M' = 'Male'
      'F' = 'Female';
      
value Age20yr
      low-20 = '1'
      21-40 = '2'
      41-60 = '3'
      61-80 = '4'
      81-high = '5';
      
title "Format Definitions in the malFmts Library";
proc format library = malFmts fmtlib;
run;

