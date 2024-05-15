SELECT count() FROM
(
    SELECT
        count([NULL, NULL]),
        count([2147483646, -2147483647, 3, 3]),
        uniqExact(if(number >= 1048577, number, NULL), NULL)
    FROM numbers(1048577)
    GROUP BY if(number >= 2., number, NULL)
);
