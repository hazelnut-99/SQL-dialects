SELECT
    1000 AS a,
    arrayMap(a -> (a + 1), [1, 2, 3]),
    a + 10 as c;
