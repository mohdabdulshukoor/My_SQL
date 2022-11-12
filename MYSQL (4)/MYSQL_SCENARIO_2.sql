use hr;

-- task1
use hr;

SELECT e.first_name AS 'Employee_name', l.city FROM employees e JOIN departments d 
ON e.department_id = d.department_id JOIN locations l ON d.location_id = l.location_id;


-- task2
SELECT e.first_name, e.last_name, d.department_name, e. job_id, e.salary, l.city FROM employees e 
JOIN departments d ON e.department_id = d.department_id JOIN 
locations l ON d.location_id = l.location_id WHERE l.city='london';


-- task3
SELECT city, COUNT(location_id) AS 'No_of_employees' FROM locations 
GROUP BY location_id ORDER BY location_id DESC limit 5;


-- task4
SELECT e.employee_id, d.department_id, d.department_name, e.manager_id FROM departments d 
JOIN employees e ON e.department_id = d.department_id;