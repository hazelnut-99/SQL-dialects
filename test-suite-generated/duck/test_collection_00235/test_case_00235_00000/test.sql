select a.a, b.b, a.a IS NOT DISTINCT FROM b.b AS "Is Not Distinct From" FROM (VALUES (1), (2), (NULL)) AS a (a), (VALUES (1), (2), (NULL)) AS b (b) ORDER BY 1, 2;
