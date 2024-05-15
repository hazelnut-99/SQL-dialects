SELECT sum(x), count(x), avg(x) FROM (SELECT number :: Decimal32(0) AS x FROM numbers(0));
