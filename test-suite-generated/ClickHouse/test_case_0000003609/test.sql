SELECT NULL
FROM
    (SELECT NULL) AS s1,
    (SELECT count(2), count(1)) AS s2;
