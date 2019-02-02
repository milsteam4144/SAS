*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 4 Problem 2
2/2/2019
;

libname learn '/folders/myfolders/mals_datasets/';
	data learn.Perm;
	
	input ID : $3. Gender : $1. DOB : mmddyy10. Height Weight;
	label DOB = 'Date of Birth'
		Height = 'Height in inches'
		Weight = 'Weight in pounds';
	format DOB date9.;

	datalines;
	001 M 10/21/1946 68 150
	002 F 5/26/1950 63 122
	003 M 5/11/1981 72 175
	004 M 7/4/1983 70 128
	005 F 12/25/2005 30 40
	;
	
*Run proc contents to display the Descriptor portion of the "Perm" dataset.
varnum lists the variables in the order that they are stored in the dataset
the default list of the variables is alphabetical order;
proc print data = learn.Perm;
run;

	