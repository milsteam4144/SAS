*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 5 Problem 4
2/7/2019
;

libname malsData '/folders/myfolders/mals_datasets/'; *libref cannot be more than 8 chars;

data malsData.Voter;
	*Input the data;
	input Age 
	Party : $1.
	(Ques1-Ques4)($1. + 1);
*Create permanent(bc they are in the DATA step) lables for the questions;
label Ques1 = "The president is doing a good job"
	  Ques2 = "Congress is doing a good job"
	  Ques3 = "Taxes are too high"
	  Ques4 = "Government should cut spending";
*Assign the variables their custom formats permanent(bc they are in the DATA step);
format Age Age.
	   Party $Party.
	   Ques1-Ques4 $Likert.;
datalines;
23 D 1 1 2 2
45 R 5 5 4 1
67 D 2 4 3 3
39 R 4 4 4 4
19 D 2 1 2 1
75 D 3 3 2 3 
57 R 4 3 4 4
;

*Create user-defined formats;
proc format library = malsData;
value Age
	low-30 = "0-30"
	31-50 = "31-50"
	51-70 = "51-70"
	71-high = "71+";
value $Party
	"D" = "Democrat"
	"R" = "Republican";
value $Likert
	"1" = "Strongly Disagree"
	"2" = "Disagree"
	"3" = "No Opinion"
	"4" = "Agree"
	"5" = "Strongly Agree";
*Print the data with its custom formatting and labels;
proc print data = voter label;
*Print the frequencies for the four questions;
proc freq data = voter;
tables Ques1-Ques4;
	

