SELECT DISTINCT if (a >= toFloat64(0), 'Ok', 'Fail') FROM (SELECT randNegativeBinomial(3, 0.5) AS a FROM numbers(100000));
