SELECT transform(toString(number), ['2', '4', '6'], [29, 20, 21], 22) as x FROM numbers(10) GROUP BY x ORDER BY x;
