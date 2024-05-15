select a.a, a.a IS DISTINCT FROM NULL AS "Is Not Distinct From" FROM (VALUES (1), (2), (NULL)) AS a (a);
