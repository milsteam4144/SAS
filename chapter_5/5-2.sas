*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 5 Problem 2
2/7/2019
;

data Voter;
	*Input the data;
	input Age 
	Party : $1.
	(Ques1-Ques4)($1. + 1);
*Create lables for the questions;
label Ques1 = "The president is doing a good job"
	  Ques2 = "Congress is doing a good job"
	  Ques3 = "Taxes are too high"
	  Ques4 = "Government should cut spending";
*Assign the variables their custom formats;
format Age Age.
	   Party $Party.;
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
proc format;
value Age
	low-30 = "0-30"
	31-50 = "31-50"
	51-70 = "51-70"
	71-high = "71+";
value $Party
	"D" = "Democrat"
	"R" = "Republican";
*************Regrouping Values Using Formats**************;
value $Group
1,2 = "Generally Disagree"
3 = "No Opinion"
4,5 = "Generally Agree";

*Print the frequencies for the four questions;
proc freq data = voter;
tables Ques1-Ques4;
format Ques1-Ques4 $Group.;
	

