       IDENTIFICATION DIVISION.
       PROGRAM-ID. "BMICalculator".
       AUTHOR.     Camden Smith.
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WEIGHT   PIC 999.
       01 HEIGHT_INCHES   PIC 999.
       01 BMI      PIC 999V99.
       
       PROCEDURE DIVISION.
       0100-START-HERE.
           DISPLAY "Enter weight in pounds: ".
           ACCEPT WEIGHT.
           DISPLAY "Enter height in inches: ".
           ACCEPT HEIGHT_INCHES.
           
           COMPUTE BMI = 703 * (WEIGHT / (HEIGHT_INCHES * HEIGHT_INCHES)
      -    ).     
           DISPLAY "Your BMI is: ", BMI.

       STOP RUN.
       END PROGRAM BMICalculator.
