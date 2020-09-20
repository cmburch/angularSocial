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

--******************** Filtering 
-- How many female customers do we have in the state of oregon and new york
SELECT firstname, gender, state FROM customers
WHERE (state = 'OR' OR state = 'NY') AND gender = 'F';  

-- Not Keyword
-- How many customers are not 55
SELECT count(age) AS "Not_AGE_55" FROM customers
WHERE NOT Age = '55';

-- Comparison operators
-- Who over the age of 44 has an income of 100 000 or more?
SELECT age, income FROM customers
WHERE age >= 44 AND income = 100000;

-- Who between the ages of 30 and 50 has an income of less than 50 000?
SELECT age FROM customers
WHERE (age >= 30 AND age <= 50) AND income < 50000;

-- What is the average income between the ages of 20 and 50?
SELECT AVG(income) FROM customers
WHERE age >= 20 AND age <= 50;

--*********************Coalesce
/*
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Assuming a students minimum age for the class is 15, what is the average age of a student?
*
* 30.4000000000000000
*/
SELECT avg(COALESCE(age, 15)) FROM "Student";

/*
* DB: https://www.db-fiddle.com/f/PnGNcaPYfGoEDvfexzEUA/0
* Question: 
* Replace all empty first or last names with a default?
*/
SELECT id, COALESCE(NAME, 'fallback'), COALESCE(NAME, 'lastName'), age FROM "Student";

-- //Notes 
-- //2 types of functions are AGGREGATE and scalar FUNCTIONS
-- // AGGREGATE functions combine a row of data and return single output
-- // Scalar FUNCTIONS runs a function for each individual row and return multiple output
-- //IS OPERATOR allows you to filter values that are null,not null, true or false