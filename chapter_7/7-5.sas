*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 7 Problem 5
2/13/2019
;

*Create a new data set from the blood data set;
libname infile '/folders/myfolders/';
data new_blood;
set infile.blood;
length CholGroup $6;

*SELECT statement to assign the chol values to groups;
select;
when(missing(Chol)) CholGroup = '';
when (Chol le 110) CholGroup = 'Low';
when (Chol le 140) CholGroup = 'Medium';
otherwise CholGroup = 'High';
end;

run;

*Print the observations that meet the requirements;
title "Chol Blood Listing with Groups";
proc print data = new_blood;
run;