*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 4 Problem 3
2/2/2019
;

libname mydata '/folders/myfolders/mals_datasets/';
	data mydata.Survey2018;
	
	input Age Gender $ (Quest1-Quest5)($1.);

	datalines;
	23 M 15243
	30 F 11123
	42 M 23555
	48 F 55541
	55 F 42232
	62 F 33333
	68 M 44122
	;

	