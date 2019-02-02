*The data does not require a name as we are only generating a report;
data _null_;

libname mydata '/folders/myfolders/mals_datasets/';

*Calculate the average of the data;
proc means data = mydata.Survey2018;
var Age;
run;