SELECT number, tuple FROM (SELECT 3 AS number, (2, 3) AS tuple) WHERE (number, tuple) IN (3, (2, 3));
