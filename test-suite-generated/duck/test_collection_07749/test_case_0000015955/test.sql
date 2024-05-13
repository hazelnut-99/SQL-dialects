SELECT depname, sum(salary)*100.0000/sum(sum(salary)) OVER (PARTITION BY depname ORDER BY salary) AS revenueratio FROM empsalary GROUP BY depname, salary ORDER BY depname, revenueratio;
