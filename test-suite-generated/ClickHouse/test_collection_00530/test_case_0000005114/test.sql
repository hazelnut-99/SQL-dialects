SELECT a FROM (SELECT sum(x) AS a, avg(x) AS b FROM (SELECT number AS x FROM numbers(10)));
