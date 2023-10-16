SELECT e1.first_name || ' ' || e1.last_name AS employee_name_1,
       e2.first_name || ' ' || e2.last_name AS employee_name_2
FROM employees e1
JOIN employees e2 ON e1.department_id = e2.department_id
                  AND e1.manager_id = e2.manager_id
                  AND e1.salary >= e2.salary
WHERE e1.employee_id <> e2.employee_id
      AND e1.salary > 10000 
      AND e2.salary > 10000
ORDER BY e1.first_name, e1.last_name, e2.first_name, e2.last_name;
