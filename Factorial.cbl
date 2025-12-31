       IDENTIFICATION DIVISION.
       PROGRAM-ID. "Factorial".
       AUTHOR.     Camden Smith.
       ENVIRONMENT DIVISION.
        
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-N          PIC 9(2).
       01 WS-FACT       PIC 9(18) VALUE 1.
       01 WS-FACT-ALT   PIC 9(18) VALUE 1.
       01 WS-I          PIC 9(18) VALUE 1.

       PROCEDURE DIVISION.
           DISPLAY "*Note: Max supported value of N is 19; ",
                   "Answers larger than 18 digits are not supported.".
           DISPLAY "Enter N: ".
           ACCEPT WS-N.

      * Calculate Factorial using incremental loop from 1 to N
              PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > WS-N
                MULTIPLY WS-FACT BY WS-I GIVING WS-FACT
              END-PERFORM.

      * Alternative method to calculate Factorial using incremental
      * loop from N to 1
              PERFORM VARYING WS-I FROM WS-N BY -1 UNTIL WS-I = 1
                MULTIPLY WS-FACT-ALT BY WS-I GIVING WS-FACT-ALT
              END-PERFORM.
           DISPLAY "The Factorial of '", WS-N, "' is: ", WS-FACT,
             " (looping from 1 to N)".
           DISPLAY "The Factorial of '", WS-N, "' is: ", WS-FACT-ALT,
             " (looping from N to 1)".
       STOP RUN.
       END PROGRAM Factorial.
