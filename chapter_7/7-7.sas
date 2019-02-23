*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 7 Problem 7
2/13/2019
;

title "Selected Observations from Bicycles Data Set";

proc print data = work.bicycles;
*Requirements;
where (Model eq "Road Bike" and
UnitCost gt 2500) or
(Model eq "Hybrid" and UnitCost gt 660);