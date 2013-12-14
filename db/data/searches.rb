SELECT  sales.id, sales.employee,  employees.first_name, employees.id FROM employees JOIN sales ON  employees.id = sales.employee_id;


