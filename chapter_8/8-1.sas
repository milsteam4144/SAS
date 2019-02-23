*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 1
2/22/2019
;

data Vitals;
input ID : $3.
	  Age
	  Pulse
	  SBP
	  DBP;
label SBP = "Systolic Blood Pressure"
	  DBP = "Diastolic Blood Pressure";
datalines;
001 23 68 120 80
002 55 72 188 96
003 78 82 200 100
004 18 58 110 70
005 43 52 120 82
006 37 74 150 98
007 . 82 140 100
;

*Create a new data set from the existing data set, Vitals;
data NewVitals;
set Vitals;
*Assign a length to the variables so they are not truncated
in the results;
length PulseGroup $4
       SBPGroup $4;

*Determine the grouping of the data into new variables;
if Age < 50 and not missing(Age) then do;
	if Pulse < 70 then PulseGroup = 'Low';
	else PulseGroup = 'High';
	if SBP < 130 then SBPGroup = 'Low';
    else SBPGroup = 'High';
end;

else if Age >= 50 then do;
    if Pulse < 74 then PulseGroup = 'Low';
    else PulseGroup = 'High';
    if SBP < 140 then SBPGroup = 'Low';
    else SBPGroup = 'High';
end;
run;
*Print the new data set;
title "Listing of NewVitals";
proc print data = NewVitals NOOBS;
run;