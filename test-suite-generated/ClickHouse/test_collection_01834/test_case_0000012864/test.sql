SELECT count() FROM
(
    SELECT * FROM test WHERE x != 'xyz'
    UNION ALL
    SELECT * FROM test WHERE isZeroOrNull(x != 'xyz')
);
