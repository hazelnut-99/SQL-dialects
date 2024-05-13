SELECT uniqExact(x) FROM (SELECT uniqState(number) AS x FROM numbers(1000));
