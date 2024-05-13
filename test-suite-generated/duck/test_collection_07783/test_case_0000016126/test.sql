select last_value(salary) over(order by salary range between 1000 following and 3000 following
	exclude group) AS last_value,
	lag(salary) over(order by salary range between 1000 following and 3000 following exclude group) AS lag,
	salary from empsalary ORDER BY last_value, lag;
