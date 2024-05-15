SELECT foo.a FROM (SELECT 1 AS a, 2 AS b) AS foo FULL JOIN (SELECT 1 AS a, 2 AS b) AS bar ON (foo.b = bar.a) AND (foo.b = bar.b) ORDER BY foo.a;
