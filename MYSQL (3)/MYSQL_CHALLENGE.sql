use hr;
-- task 1
SELECT 
    COUNT(employee_id) AS 'count of employees'
FROM
    employees;

-- task 2
SELECT 
    job_id, COUNT(employee_id)
FROM
    employees
GROUP BY job_id;

-- task 3
SELECT 
    first_name, salary
FROM
    employees
WHERE
    salary > 6000
ORDER BY salary DESC;

-- task 4
SELECT 
    COUNT(employee_id) AS 'salaries more than 20000'
FROM
    employees
WHERE
    salary > 20000;

-- task 5
SELECT 
    COUNT(employee_id) AS 'IT EMPLOYEES'
FROM
    employees
WHERE
    job_id = 'IT_PROG' AND salary > 6000;
SELECT 
    *
FROM
    employees;

-- task 6
alter table employees add (final_ctc int);
UPDATE employees 
SET 
    annual_ctc = salary * 12;
SELECT 
    *
FROM
    employees;

-- task 7
alter table employees add (for_rev_1 double, for_rev_2 double, for_rev_3 double);
UPDATE employees 
SET 
    for_rev_1 = (final_ctc + final_ctc * 0.2)
WHERE
    salary BETWEEN 2000 AND 15000;
UPDATE employees 
SET 
    for_rev_2 = (final_ctc + final_ctc * 0.1)
WHERE
    salary BETWEEN 16000 AND 20000;
UPDATE employees 
SET 
    for_rev_2 = (final_ctc + final_ctc * 0.05)
WHERE
    salary BETWEEN 21000 AND 25000;
SELECT 
    *
FROM
    employees;

-- task 8
SELECT 
    employee_id, first_name
FROM
    employees
WHERE
    commission_pct IS NOT NULL;

-- task 9
SELECT 
    CONCAT(first_name, ' ', last_name) AS 'full name'
FROM
    employees;

-- task 10
SELECT 
    first_name,
    last_name,
    email AS "email id's'" ,
    phone_number,
    employee_id
FROM
    employees
WHERE
    commission_pct IS NOT NULL;

-- task 11
SELECT 
    first_name, salary, job_id, department_id
FROM
    employees
GROUP BY job_id
ORDER BY salary DESC;

-- task 12
SELECT 
    final_ctc, job_id, department_id
FROM
    employees
GROUP BY department_id
ORDER BY final_ctc DESC
LIMIT 3; 

-- task 13
SELECT 
    *
FROM
    employees
WHERE
    job_id LIKE '%clerk%';

-- task 14
SELECT 
    COUNT(job_id), job_id
FROM
    employees
WHERE
    job_id LIKE '%clerk%'
GROUP BY job_id;
SELECT 
    AVG(salary), job_id
FROM
    employees
WHERE
    job_id LIKE '%clerk%'
GROUP BY job_id;

-- task 15
SELECT 
    COUNT(employee_id), job_id
FROM
    employees
GROUP BY job_id;

-- task 16
SELECT 
    AVG(salary), job_id
FROM
    employees
GROUP BY job_id;

-- task 17
SELECT 
    salary, job_id
FROM
    employees
WHERE
    salary BETWEEN 7000 AND 10000
GROUP BY job_id;
SELECT 
    salary, COUNT(job_id), job_id
FROM
    employees
WHERE
    salary BETWEEN 7000 AND 10000
GROUP BY job_id;

-- task 18
SELECT 
    first_name,
    employee_id,
    salary,
    hire_date,
    365 / (YEAR(CURRENT_DATE) - YEAR(hire_date)) AS 'years_of_experience'
FROM
    employees
ORDER BY years_of_experience DESC;




















