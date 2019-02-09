*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 6 Problem 3
2/8/2019
;

*Using the XLS or XLSX Engine to read an Excel spreadsheet as a SAS data set;

*Create a libname to access the spreadsheet directly;
libname SocFile '/folders/myfolders/chapter_answers/chapter_6/Soccer.xls';

title "Data from the Soccer.xls Spreadsheet";
proc print data = soccerF.'Soccer$'n; 
*soccer_F is the libname which references the file (aka the spreadsheet);
*Soccer is the  name of the worksheet, a $ is always put after the worksheet name, and also an n;
*A spreadsheet can contain multiple worksheets;
run;
