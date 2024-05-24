SELECT number, tuple FROM (SELECT 2 AS number, (2, 3) AS tuple) WHERE (number, tuple) IN ((2, (2, 3)));
