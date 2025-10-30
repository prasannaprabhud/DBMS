--  🟢 **Beginner-Level PL/SQL Coding Questions**



-- 1. **Write a PL/SQL block to display “Hello World”.**
--    * Basic anonymous block with `DBMS_OUTPUT.PUT_LINE`.
BEGIN 
DBMS_OUTPUT.PUT_LINE('Hello World');
END;
/

-- 2. **Write a program to find the sum of two numbers using PL/SQL.**
DECLARE 
A NUMBER := 2;
B NUMBER := 4;
C NUMBER;
BEGIN 
C := A + B;
DBMS_OUTPUT.PUT_LINE(C);
END;
/

-- 3. **Write a PL/SQL block to check whether a given number is even or odd.**
DECLARE
A NUMBER := &NUMBER;
BEGIN
IF MOD(A,2) = 0 THEN
DBMS_OUTPUT.PUT_LINE(A || ' IS EVEN');
ELSE 
DBMS_OUTPUT.PUT_LINE(A || ' IS ODD');
END IF;
END;
/

DECLARE
A NUMBER := &NUMBER;
BEGIN
CASE
WHEN MOD(A,2) = 0 THEN
DBMS_OUTPUT.PUT_LINE(A || ' IS EVEN');
ELSE 
DBMS_OUTPUT.PUT_LINE(A || ' IS ODD');
END CASE;
END;
/

-- 4. **Write a PL/SQL block to print the first 10 natural numbers.**
--    * Use a `FOR` loop.
DECLARE
A NUMBER := 10;
BEGIN 
    FOR I IN 1..A loop
    DBMS_OUTPUT.PUT_LINE(I);
    END LOOP;
END;
/

-- 5. **Write a PL/SQL block to calculate the factorial of a number.**
--    * Use either a `FOR` loop or `WHILE` loop.

DECLARE 
    A NUMBER := 5; -- 120
    F NUMBER := 1 ;
BEGIN 
    FOR I IN 1..A LOOP
    F := F * I;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('FACTORIAL OF ' || A || ' IS ' || F );
END;
/

-- WHILE LOOP
DECLARE 
    A NUMBER := 5; -- 120
    B NUMBER := 1;
    F NUMBER := 1 ;
BEGIN 
    WHILE B <= A LOOP
    F := F * B;
    B := B + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('FACTORIAL OF ' || A || ' IS ' || F );
END;
/


-- 6. **Write a PL/SQL program to find the largest of three numbers.**

-- 7. **Write a program to display employee details from the EMP table using a cursor.**

-- find the given number is divisible by 19
DECLARE
A NUMBER := &NUMBER;
BEGIN
CASE 
WHEN MOD(A,19) = 0 THEN 
DBMS_OUTPUT.PUT_LINE('A : ' || A || ' is divisible by 19');
ELSE 
DBMS_OUTPUT.PUT_LINE('A : ' || A || ' is not divisible by 19');
END CASE;
END;
/


