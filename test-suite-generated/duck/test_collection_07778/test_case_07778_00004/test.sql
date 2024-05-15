select last_value(salary) over(order by salary range between 1000 preceding and 1000 following) AS last_value,
	lag(salary) over(order by salary range between 1000 preceding and 1000 following) AS lag,
	salary from empsalary ORDER BY last_value, lag;
