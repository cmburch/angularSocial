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




--*****************************************Aggregate 

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 


-- Question 1: What is the average salary for the company?
-- Table: Salaries

SELECT Avg(salary) FROM salaries;

-- Question 2: What year was the youngest person born in the company?
-- Table: employee
SELECT min(birth_date) AS "BirthDate" FROM employees;

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */
-- 

-- Question 1: How many towns are there in france?
-- Table: Towns
SELECT count(id) FROM France;

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage
SELECT count(countrycode) FROM countrylanguage
WHERE isofficial = TRUE;


-- Question 2: What is the average life expectancy in the world?
-- Table: country
SELECT Avg(lifeexpectancy) AS "life expectancy" FROM country;

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city
SELECT AVG(population) FROM city
WHERE countrycode = 'NLD';



-- //Notes 
-- //2 types of functions are AGGREGATE and scalar FUNCTIONS
-- // AGGREGATE functions combine a row of data and return single output
-- // Scalar FUNCTIONS runs a function for each individual row and return multiple output