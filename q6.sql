SELECT COUNT(employees.employee_id) FROM employees, departments, locations, countries, regions WHERE employees.department_id = departments.department_id AND departments.location_id = locations.location_id AND locations.country_id = countries.country_id AND countries.region_id = regions.region_id AND regions.region_name = "Europe";