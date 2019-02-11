*
Progammer: Mallory Milstead
Module 2 Project
2/10/2019
This program creates a permanent data set of the Presidents that are depicted
on Mount Rushmore and their attributes
;

*Create a libref that references the directory where the data set will be stored;
libname malData '/folders/myfolders/mals_datasets/';

*Create the data set with the Informats, Formats and labels;
data malData.MtRush_Pres;
	length PresName $13 StartDate 8 Party $22;
	input PresName :	$13.
		  StartDate :   date9.
		  Party     :   $22.;
    format PresName $13. StartDate worddate18. Party $22.;
    label PresName = 'President Name'
          StartDate = 'Inauguration Date';
*Insert the data with datalines;
datalines;
G.Washington 30apr1789 none
T.Jefferson 04mar1801 Democratic-Republican
A.Lincoln 04mar1861 Republican
T.Roosevelt 14sep1901 Republican
;
run;

*View the data portion of the MtRush_Pres data set;
title "Mt. Rushmore Presidents Data";
proc print data = malData.MtRush_Pres;
run;

*View the descriptor portion of the MtRush_Pres data set;
title "Descriptor Portion of Mt. Rushmore Presidents Data ";
proc contents data = malData.MtRush_Pres;
run;