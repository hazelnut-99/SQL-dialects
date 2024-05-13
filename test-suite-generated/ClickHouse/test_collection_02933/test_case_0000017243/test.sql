SELECT sum(c1) AS v
FROM
    (
     SELECT
         1 AS c1,
         ['v'] AS c2,
         ['d'] AS d
        )
WHERE arrayExists(i -> (d = ['d']), c2);
