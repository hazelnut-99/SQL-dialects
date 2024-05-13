SELECT number, tuple FROM (SELECT 1 AS number, (2, 3) AS tuple) WHERE (number, tuple) IN ( (/*number*/1, /*tuple*/(2, 3)), (/*number*/4, /*tuple*/(5, 6)) );
