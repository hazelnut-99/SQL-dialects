SELECT sum(c1) AS v
FROM
    (
     SELECT
         1 AS c1,
         ['v'] AS c2
        )
WHERE arrayExists(v -> (v = 'v'), c2);
