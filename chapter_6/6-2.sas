*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 6 Problem 1
2/7/2019
;

*Used the SAS Studio import facility to convert the drugtest.xls file to a SAS data set;

*Print the observations from the temporary "IMPORT" dataset created using the import facility;
proc print data = WORK.IMPORT;