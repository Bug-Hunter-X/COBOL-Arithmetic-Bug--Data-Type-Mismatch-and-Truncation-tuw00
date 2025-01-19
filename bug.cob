```cobol
01  WS-DATA-AREA.          
    05  WS-INT-VALUE PIC 9(5) VALUE 10000. 
    05  WS-COMP-1 PIC 99V99 VALUE 12.34. 
    05  WS-COMP-2 PIC 99V99 VALUE 56.78. 
    05  WS-COMP-3 PIC 99V99. 

PROCEDURE DIVISION.
    ADD WS-COMP-1 WS-COMP-2 GIVING WS-COMP-3.
    DISPLAY "Sum: " WS-COMP-3.
    DIVIDE WS-INT-VALUE BY 2 GIVING WS-INT-VALUE REMAINDER WS-COMP-3.
    DISPLAY "Result of division:" WS-INT-VALUE WS-COMP-3.
    STOP RUN.
```