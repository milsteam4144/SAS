data Bank;
infile "/folders/myfolders/bankdata.txt";

*Using formatted input;
*The @ denotes which character to start on;
*The number with period means how many characters to read;

input @1	Name 	$15.
	  @16	Acct  	$5.
	  @21	Balance  6.
	  @27	Rate	 4.
	  ;

Interest = Balance * Rate;

title "Bank Data Formatted Input";

proc print data = Bank;
format Balance Interest dollar11.2;

run;