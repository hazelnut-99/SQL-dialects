SELECT arrayMap(x -> dictGet('one_cell_cache_ints_overflow', 'i8', toUInt64(x)), array)
FROM
(
    SELECT [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20] AS array
);
