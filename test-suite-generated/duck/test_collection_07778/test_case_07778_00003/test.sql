select first_value(salary) over(order by salary range between 1000 preceding and 1000 following) AS first_value,
	lead(salary) over(order by salary range between 1000 preceding and 1000 following) AS lead,
	nth_value(salary, 1) over(order by salary range between 1000 preceding and 1000 following),
	salary from empsalary ORDER BY first_value, lead;
