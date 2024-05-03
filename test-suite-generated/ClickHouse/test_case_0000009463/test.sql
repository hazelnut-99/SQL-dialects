SELECT DISTINCT if (m > toFloat64(-0.2) AND m < toFloat64(0.2), 'Ok', 'Fail') FROM (SELECT avg(a) as m FROM (SELECT randStudentT(5) AS a FROM numbers(100000)));
