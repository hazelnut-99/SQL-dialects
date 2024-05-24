SELECT count() FROM (SELECT sum(x), avg(x) FROM (SELECT number AS x FROM numbers(10)));
