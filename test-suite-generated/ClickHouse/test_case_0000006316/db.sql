DROP TABLE IF EXISTS t64;
CREATE TABLE t64
(
    i8 Int8,
    t_i8 Int8 Codec(T64, LZ4),
    i16 Int16,
    t_i16 Int16 Codec(T64, LZ4),
    i32 Int32,
    t_i32 Int32 Codec(T64, LZ4),
    i64 Int64,
    t_i64 Int64 Codec(T64, LZ4)
) ENGINE MergeTree() ORDER BY tuple();
INSERT INTO t64 SELECT toInt32(number)-1 AS x, x, x, x, x, x, x, x FROM numbers(2);
INSERT INTO t64 SELECT toInt32(number)-1 AS x, x, x, x, x, x, x, x FROM numbers(3);
INSERT INTO t64 SELECT 42 AS x, x, x, x, x, x, x, x FROM numbers(4);
INSERT INTO t64 SELECT (intExp2(8) - 10 + number) AS x, x, x, x, x, x, x, x FROM numbers(20);
