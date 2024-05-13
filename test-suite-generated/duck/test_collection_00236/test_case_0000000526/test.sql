select a.a, a.a IS DISTINCT FROM 1 AS "Is Not Distinct From" FROM (VALUES (1), (2), (NULL)) AS a (a);
