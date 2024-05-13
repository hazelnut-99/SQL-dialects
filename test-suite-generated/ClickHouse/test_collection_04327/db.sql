CREATE TABLE window_funtion_threading
Engine = MergeTree
ORDER BY (ac, nw)
AS SELECT
        toUInt64(toFloat32(number % 2) % 20000000) as ac,
        toFloat32(1) as wg,
        toUInt16(toFloat32(number % 3) % 400) as nw
FROM numbers_mt(10000000);
