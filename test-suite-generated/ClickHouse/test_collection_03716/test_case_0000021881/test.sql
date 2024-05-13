SELECT DISTINCT if (a >= toFloat64(0), 'Ok', 'Fail') FROM (SELECT randExponential(15) AS a FROM numbers(100000));
