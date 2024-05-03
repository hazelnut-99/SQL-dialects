SELECT DISTINCT if (a >= toFloat64(0) AND a <= toFloat64(1), 'Ok', 'Fail') FROM (SELECT randUniform(0, 1) AS a FROM numbers(100000));
