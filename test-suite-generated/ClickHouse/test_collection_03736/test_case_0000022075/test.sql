SELECT sum(x), count(x), avg(x), toTypeName(sum(x)), toTypeName(count(x)), toTypeName(avg(x)) FROM (SELECT number :: Decimal32(0) AS x FROM numbers(10));
