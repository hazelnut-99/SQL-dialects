DROP TABLE IF EXISTS bitmap_test;
CREATE TABLE bitmap_test(pickup_date Date, city_id UInt32, uid UInt64)ENGINE = Memory;
INSERT INTO bitmap_test SELECT '2019-01-01', 1, 4294967295 + number FROM numbers(1,100);
INSERT INTO bitmap_test SELECT '2019-01-02', 1, 4294967295 + number FROM numbers(90,110);
INSERT INTO bitmap_test SELECT '2019-01-03', 2, 4294967295 + number FROM numbers(1,210);
DROP TABLE IF EXISTS bitmap_state_test;
CREATE TABLE bitmap_state_test
(
	pickup_date Date,
	city_id UInt32,
    uv AggregateFunction( groupBitmap, UInt64 )
)
ENGINE = AggregatingMergeTree() PARTITION BY toYYYYMM(pickup_date) ORDER BY (pickup_date, city_id);
INSERT INTO bitmap_state_test SELECT
    pickup_date,
    city_id,
    groupBitmapState(uid) AS uv
FROM bitmap_test
GROUP BY pickup_date, city_id
ORDER BY pickup_date, city_id;
