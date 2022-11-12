USE HR;

-- TASK 1
SELECT first_name,last_name
FROM employees
WHERE salary > any
  (SELECT salary
  FROM employees
  WHERE last_name = 'austin' );
   
-- TASK 2
SELECT 
    *
FROM
    employees
WHERE
    department_id IN (SELECT 
            department_id
        FROM
            departments
        WHERE
            department_id = 40);

-- TASK 3
SELECT 
    first_name, last_name, job_id
FROM
    employees
WHERE
    employees.manager_id IN (SELECT 
            employee_id
        FROM
            employees
        WHERE
            department_id IN (SELECT 
                    department_id
                FROM
                    departments
                WHERE
                    location_id IN (SELECT 
                            location_id
                        FROM
                            locations
                        WHERE
                            country_id = 'uk')));

-- TASK 4 
SELECT 
    first_name, salary
FROM
    employees
WHERE
    salary > ANY (SELECT 
            AVG(salary)
        FROM
            employees);

-- TASK 5
 select first_name, last_name, salary from employees where department_id in (select department_id from departments where department_name
 like '%sales$') and salary <(select avg(salary) from employees);
 
-- TASK 6
SELECT 
    first_name, last_name, salary
FROM
    employees
WHERE
    salary > ALL (SELECT 
            salary
        FROM
            employees
        WHERE
            job_id = 'it_prog'
        ORDER BY salary ASC);

-- TASK 7 
SELECT 
    employee_id, first_name, last_name, department_name
FROM
    employees
        JOIN
    departments ON employees.department_id = departments.department_id;

-- TASK 8
SELECT 
    employee_id, first_name, last_name, salary, department_id
FROM
    employees
WHERE
    salary > ANY (SELECT 
            AVG(salary)
        FROM
            employees)
GROUP BY department_id;
 
-- TASK 9 
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    salary > ANY (SELECT 
            SUM(salary) * 0.6
        FROM
            employees)
GROUP BY department_id;

-- TASK 10 
SELECT 
    *
FROM
    employees
WHERE
    salary IN (SELECT 
            MIN(salary)
        FROM
            employees
        GROUP BY job_id)
ORDER BY salary ASC;

-- TASK 11 
SELECT 
    *
FROM
    employees
ORDER BY salary DESC
LIMIT 5;

-- TASK 12
SELECT 
    *
FROM
    employees
ORDER BY salary ASC
LIMIT 3;