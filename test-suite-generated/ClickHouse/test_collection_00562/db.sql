DROP TABLE IF EXISTS t64;
CREATE TABLE t64
(
    u8 UInt8,
    t_u8 UInt8 Codec(T64, ZSTD),
    u16 UInt16,
    t_u16 UInt16 Codec(T64, ZSTD),
    u32 UInt32,
    t_u32 UInt32 Codec(T64, ZSTD),
    u64 UInt64,
    t_u64 UInt64 Codec(T64, ZSTD)
) ENGINE MergeTree() ORDER BY tuple();
INSERT INTO t64 SELECT number AS x, x, x, x, x, x, x, x FROM numbers(1);
INSERT INTO t64 SELECT number AS x, x, x, x, x, x, x, x FROM numbers(2);
INSERT INTO t64 SELECT 42 AS x, x, x, x, x, x, x, x FROM numbers(4);
