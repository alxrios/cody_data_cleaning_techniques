

*----------------------------------------------------------------*
| PROGRAM NAME: PATIENTS.SAS IN C:\CLEANING                      |
| PURPOSE: TO CREATE A SAS DATA SET CALLED PATIENTS              |
| DATE:                                                          |
*----------------------------------------------------------------*;

libname clean "C:\...";

data clean.patients;
 infile "C:\...\patients.txt" pad;
 input @1   patno   $3.
       @4   gender  $1.
	   @5   visit   mmddyy10.
	   @15  hr      3.
	   @18  sbp     3.
	   @21  dbp     3.
	   @24  dx      $3.
	   @27  ae      $1.;

 label patno  = "Patient Number"
       gender = "Gender"
	   visit  = "Visit Date"
	   hr     = "Heart Rate"
	   sbp    = "Systolic Blood Pressure"
	   dbp    = "Diastolic Blood Pressure"
	   dx     = "Diagnosis Code"
	   ae     = "Adverse Event?";

  format visit mmddyy10.;
run;

