SELECT number, tuple FROM (SELECT 5 AS number, (2, 3) AS tuple) WHERE (number, tuple) IN (SELECT 5, (2, 3));
