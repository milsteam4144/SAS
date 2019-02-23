*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 7 Problem 3
2/13/2019
;

data Sales;
set work.sales;

title "Sales Data using OR";
proc print data = sales;
where EmpID = '9888' OR EmpID = '0177';
run;

title "Sales Data using IN";
proc print data = sales;
where EmpID IN ('9888','0177');
run;