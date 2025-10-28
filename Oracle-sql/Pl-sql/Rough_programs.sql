
SET SERVEROUTPUT ON;

CL SCR

DBMS_OUTPUT.PUT_LINE('HELLO');

------------------------------------------------------------------
DECLARE
A NUMBER(2) := 37;
BEGIN
CASE 
WHEN MOD(A,19) = 0 THEN 
DBMS_OUTPUT.PUT_LINE('A : ' || A || ' is divisible by 19');
ELSE 
DBMS_OUTPUT.PUT_LINE('A : ' || A || ' is not divisible by 19');
END CASE;
END;
/

------------------------------------------------------------------
DECLARE
B BOOLEAN := TRUE;
C BOOLEAN := FALSE;
BEGIN
IF C THEN 
DBMS_OUTPUT.PUT_LINE('HELLO');
ELSE 
DBMS_OUTPUT.PUT_LINE('HI');
END IF;
END;
/

------------------------------------------------------------------
DECLARE
B BOOLEAN := TRUE;
C BOOLEAN := FALSE;
BEGIN
CASE 
WHEN B THEN 
DBMS_OUTPUT.PUT_LINE('HELLO');
ELSE 
DBMS_OUTPUT.PUT_LINE('HI');
END CASE;
END;
/

