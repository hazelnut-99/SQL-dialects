select a.a, b.b, a.a IS DISTINCT FROM b.b AS "Is Distinct From" FROM (VALUES (1), (2), (NULL)) AS a (a), (VALUES (1), (2), (NULL)) AS b (b) ORDER BY 1, 2;
