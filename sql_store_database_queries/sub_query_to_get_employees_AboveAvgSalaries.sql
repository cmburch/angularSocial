use sql_hr;

SELECT *
FROM employees
Where salary > (
	Select AVG(salary)
    From employees
);
