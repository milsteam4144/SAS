*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 7 Problem 4
2/13/2019
;

*Create a new data set from the sales data set;
data new_sales;
set work.sales;

*Select statement works like a switch-case statement;
select (Region);
when ('North') Weight = 1.5;
when ('South') Weight = 1.7;
when ('West', 'East') Weight = 2.0;
otherwise;
end;

run;

*Print the variables including "Weight";
title "Listing of New Sales Data Set";
proc print data = new_sales;
var Region TotalSales Weight;