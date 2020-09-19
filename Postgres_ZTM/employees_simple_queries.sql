-- SELECT emp_no As "Employee #", birth_date AS "Birthday"
-- FROM employees
-- 
-- Select * 
-- From employees

SELECT emp_no, Concat(first_name, ' ', last_name) AS "Full Name"
FROM employees


-- //Notes 
-- //2 types of functions are AGGREGATE and scalar FUNCTIONS
-- // AGGREGATE functions combine a row of data and return single output
-- // Scalar FUNCTIONS runs a function for each individual row and return multiple output