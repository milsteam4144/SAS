*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 5 Problem 4
2/7/2019
;

libname malsData '/folders/myfolders/mals_datasets/'; *libref cannot be more than 8 chars;
*FMTSEARCH tells SAS where to look for your format library;
options fmtsearch = (malsData);

data new_Voter;
	set malsData.Voter;

*Assign the variables their custom formats permanent(bc they are in the DATA step);
format Age Age.
	   Party $Party.
	   Ques1-Ques4 $Likert.;

*Print the data with its custom formatting and labels;
proc print data = voter label;
*Print the listing of formats in the specified library;
title "Format Definitions in the malsData Library";
proc format library = malsData fmtlib;
run;

	

