SELECT groupArray(x) from (SELECT number as x FROM numbers(3) ORDER BY x, exp(exp(x)));
