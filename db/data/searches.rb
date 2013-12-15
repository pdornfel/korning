SELECT  sales.id, sales.employee,  employees.first_name, employees.id FROM employees JOIN sales ON  employees.id = sales.employee_id;


## not working
SELECT employee, sale_date, sale_amount, units_sold, invoice_no FROM sales;