SELECT foo.a FROM (SELECT 1 AS a, 2 AS b) AS foo FULL JOIN (SELECT 1 AS a, 2 AS b) AS bar ON (foo.a = bar.b) AND (foo.b = bar.b) ORDER BY foo.a;
