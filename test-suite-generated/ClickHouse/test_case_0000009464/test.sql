SELECT DISTINCT if (a >= toFloat64(0), 'Ok', 'Fail') FROM (SELECT randFisherF(3, 4) AS a FROM numbers(100000));
