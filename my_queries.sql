--------Ans to thw question No.1(A)----------------------------
SELECT FIRST_NAME, LAST_NAME, TITLE,salary
FROM employee WHERE salary > (SELECT MIN(salary) FROM employee)
ORDER BY salary ASC LIMIT 3;

--------Ans to thw question No.1(B)----------------------------
SELECT MIN(SALARY) AS second_lowest_salary
FROM employee
WHERE SALARY > (
SELECT MIN(SALARY) FROM employee
);

--------Ans to thw question No.1(C)----------------------------

SELECT OPEN_BRANCH_ID,AVG(PENDING_BALANCE) AS AVERAGE_PENDING_BALANCE
FROM account WHERE STATUS = 'ACTIVE'
GROUP BY OPEN_BRANCH_ID
HAVING AVG(PENDING_BALANCE) < 4300
ORDER BY OPEN_BRANCH_ID;




--------Ans to thw question No.1(D)----------------------------
pagination query:
=================
//Showing 1st page with  information of 5  bank accounts  out of 29

SELECT * FROM account LIMIT 5;

//Showing 2nd page with  information of 5  bank accounts (except id=6)  out of 29 except first 5

SELECT * FROM account LIMIT 5 OFFSET 5 ;

//Showing 3rd page with  information of 5  bank accounts (except id=11,16)  out of 29 except first 10

SELECT * FROM account LIMIT 5 OFFSET 10;

//Showing 4th page with  information of 5  bank accounts (except id=20)  out of 29 except first 15

SELECT * FROM account LIMIT 5 OFFSET 15;

//Showing 5th page with  information of 5  bank accounts (except id=26)  out of 29 except first 20

SELECT * FROM account LIMIT 5 OFFSET 20;


--------Ans to thw question No.1(E)----------------------------
SELECT 
    COUNT(DISTINCT OPEN_BRANCH_ID) AS TOTAL_BRANCHES
FROM account;

