*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 13
2/22/2019
;


data financial;
*DO UNTIL WITH INTEREST COMPOUNDED QUARTERLY;

do until(Amount ge 30000);
Year +1;
Amount + 1000;
do Quarter = 1 to 4;
Amount + Amount*(.0425/4);*Interest compounded quarterly;
output;
end;
end;

format Amount dollar10.2;

proc print data = financial NOOBS;
run;
