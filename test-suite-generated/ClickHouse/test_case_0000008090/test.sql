SELECT countIf(sym = 'Red') OVER () AS res
FROM
(
    SELECT CAST(CAST(number % 5, 'Enum8(\'Red\' = 0, \'Blue\' = 1, \'Yellow\' = 2, \'Black\' = 3, \'White\' = 4)'), 'LowCardinality(String)') AS sym
    FROM numbers(10)
);
