SELECT transform(number, [2, 4, 6], [2900, 2000, 2100], materialize(2200)) as x FROM numbers(10) GROUP BY x ORDER BY x;
