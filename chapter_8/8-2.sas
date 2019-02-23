*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 2
2/22/2019
;

data MonthSales;
input month sales @@;

*This uses the SUM statement, you do not have to explicitly call it;
SumSales + sales;

*Format the values as money;
format SumSales sales dollar8.;
datalines;
1 4000 2 5000 3 . 4 5500 5 5000 6 6000 7 6500 8 4500
9 5100 10 5700 11 6500 12 7500
;
run;
title "Listing of Month Sales with SUM";
proc print data = MonthSales NOOBS;
run;
