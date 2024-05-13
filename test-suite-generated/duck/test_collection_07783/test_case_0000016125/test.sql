select first_value(salary) over(order by salary range between 1000 following and 3000 following
	exclude current row) AS first_value,
	lead(salary) over(order by salary range between 1000 following and 3000 following exclude ties) AS lead,
	nth_value(salary, 1) over(order by salary range between 1000 following and 3000 following
	exclude ties),
	salary from empsalary ORDER BY first_value, lead;
