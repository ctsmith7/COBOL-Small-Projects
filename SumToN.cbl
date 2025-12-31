       IDENTIFICATION DIVISION.
       PROGRAM-ID. "SumToN".
       AUTHOR.     Camden Smith.
       ENVIRONMENT DIVISION.
        
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-N          PIC 9(8).
       01 WS-SUM-1      PIC 9(18) VALUE 0.
       01 WS-SUM-2      PIC 9(18) VALUE 0.
       01 WS-SUM-3      PIC 9(18) VALUE 0.
       01 WS-I          PIC 9(18) VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY "*Note: Max supported value of N is 999999999; ",
                   "Sums larger than 18 digits are not supported.".
      * Exact max N is somewhere btwn 1.4B and 1.5B, but for simplicity
      * and compute time, limit is set to 8 digits.
           DISPLAY "Enter N: ".
           ACCEPT WS-N.

      * Calculate Sum using incremental loop from 1, up to N
              PERFORM VARYING WS-I FROM 0 BY 1 UNTIL WS-I > WS-N
                 ADD WS-SUM-1 TO WS-I GIVING WS-SUM-1
              END-PERFORM.

      * Calculate Sum using incremental loop from N, down to 1
              PERFORM VARYING WS-I FROM WS-N BY -1 UNTIL WS-I = 0
                 ADD WS-SUM-2 TO WS-I GIVING WS-SUM-2
              END-PERFORM.

      * Calculate Sum using Partial Sums formula
              COMPUTE WS-SUM-3 = (WS-N * (WS-N + 1)) / 2.

           DISPLAY "The Sum of numbers from 1 to '", WS-N, "' is: ",
              WS-SUM-1, " (looping from 1 to N)".
           DISPLAY "The Sum of numbers from 1 to '", WS-N, "' is: ",
              WS-SUM-2, " (looping from N to 1)".
           DISPLAY "The Sum of numbers from 1 to '", WS-N, "' is: ",
              WS-SUM-3, " (using Partial Sums formula)".
       STOP RUN.
       END PROGRAM SumToN.
