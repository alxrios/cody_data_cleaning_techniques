

*-----------------------------------------------------------------*
| PROGRAM NAME: PATIENTS2.SAS IN C:\CLEANING                      |
| PURPOSE: TO CREATE A SAS DATA SET CALLED PATIENTS2              |
| DATE: MAY 29, 1998                                              |
*-----------------------------------------------------------------*;

libname clean "C:\Users\riosa\documents\datasets\sas\data_cleaning_techniques";

data clean.patients2;
 infile "C:\Users\riosa\documents\datasets\sas\data_cleaning_techniques\patients2.txt" pad;
 input @1  patno $3.
       @4  visit mmddyy10.
	   @14 hr     3.
	   @17 sbp    3.
	   @20 dbp    3.;
 format visit mmddyy10.;
run;
