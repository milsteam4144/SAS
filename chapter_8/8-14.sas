*
Progammer: Mallory Milstead
Learning SAS by Example: A Programmer's Guide, Second Edition
Chapter 8 Problem 14
2/22/2019
;


data squares;
*Create a table of integers and their squares. End when the square value
is greater than 100;
integer = 1;

*DO UNTIL LOOP;
do until(square_value > 100);
square_value = integer**2;
output;
integer +1;
end;

proc print data = squares NOOBS;
run;