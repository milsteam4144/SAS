*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 7 Problem 1
2/2/2019
;

data School;
	input Age
	Quiz : $1.
	Midterm
	Final;

*If statements to assign Grade value depending on Age;
if Age = 12 then Grade = 6;
else if Age = 13 then Grade = 8;

*If statement to assign a numberic value to "Quiz" variable;
if Quiz = 'A' then quiz_num_grade = 95;
else if Quiz = 'B' then quiz_num_grade = 85;
else if Quiz = 'C' then quiz_num_grade = 75;
else if Quiz = 'D' then quiz_num_grade = 70;
else if Quiz = 'F' then quiz_num_grade = 65;

*Calculate the final course grade;
Course = (quiz_num_grade*.20) + (Midterm*.30) + (Final*.50);

datalines;
12 A 92 95
12 B 88 88
13 C 78 75
13 A 92 93
12 F 55 62
13 B 88 82
;

title "School Data Set";
proc print data = School NOOBS;
run;
