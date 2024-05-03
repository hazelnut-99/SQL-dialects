SELECT count() FROM (SELECT sum(x), avg(x) FROM (SELECT number % 3 AS x FROM numbers(10) GROUP BY x));
