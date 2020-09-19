-- SELECT emp_no As "Employee #", birth_date AS "Birthday"
-- FROM employees
-- 
SELECT * 
FROM employees;

SELECT emp_no, Concat(first_name, ' ', last_name) AS "Full Name"
FROM employees;

-- Count how many employees are at the company
SELECT count(emp_no) FROM employees;
;
-- Get employee with highest salary available 
SELECT Max(salary) FROM salaries;

-- Get the total amount of salaries paid
SELECT Sum(salary) FROM salaries;




-- //Notes 
-- //2 types of functions are AGGREGATE and scalar FUNCTIONS
-- // AGGREGATE functions combine a row of data and return single output
-- // Scalar FUNCTIONS runs a function for each individual row and return multiple output