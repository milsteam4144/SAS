*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 7 Problem 6
2/13/2019
;

*Create a new data set from the sales data set;
data new_sales;
set work.sales;
run;

title 'Selected Observations';
proc print data = new_sales;
where Region = 'North' and Quantity < 60 or
Customer = "Pet's are Us";


