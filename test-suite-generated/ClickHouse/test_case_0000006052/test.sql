WITH
    arrayMap(x -> x + 1, range(50)) as data
SELECT
    arrayReduceInRanges('groupArray', [(a, c), (b, d)], data) =
        [arraySlice(data, a, c), arraySlice(data, b, d)]
FROM (
    SELECT
        cityHash64(number + 100) % 40 as a,
        cityHash64(number + 200) % 60 as b,
        cityHash64(number + 300) % 20 as c,
        cityHash64(number + 400) % 30 as d
    FROM numbers(20)
);
