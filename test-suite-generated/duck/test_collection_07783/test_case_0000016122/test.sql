select sum(salary) over (order by enroll_date range between '1 year'::interval preceding and '1 year'::interval following
	exclude ties), salary, enroll_date from empsalary ORDER BY enroll_date, salary;
