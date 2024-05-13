DROP TABLE IF EXISTS bitmap_test;
CREATE TABLE bitmap_test(pickup_date Date, city_id UInt32, uid UInt32)ENGINE = Memory;
INSERT INTO bitmap_test SELECT '2019-01-01', 1, number FROM numbers(1,50);
INSERT INTO bitmap_test SELECT '2019-01-02', 1, number FROM numbers(11,60);
INSERT INTO bitmap_test SELECT '2019-01-03', 2, number FROM numbers(1,10);
DROP TABLE IF EXISTS bitmap_state_test;
DROP TABLE IF EXISTS bitmap_column_expr_test;
CREATE TABLE bitmap_column_expr_test
(
    t DateTime,
    z AggregateFunction(groupBitmap, UInt32)
)
ENGINE = MergeTree
PARTITION BY toYYYYMMDD(t)
ORDER BY t;
INSERT INTO bitmap_column_expr_test VALUES (now(), bitmapBuild(cast([3,19,47] as Array(UInt32))));
