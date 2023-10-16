SELECT COUNT(e.employee_id) AS number_of_employees
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Shipping';
