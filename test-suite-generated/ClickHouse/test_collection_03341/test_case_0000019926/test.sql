SELECT avg(number), avg(number + 1), avg(number + 2) FROM numbers(1) GROUP BY number;
