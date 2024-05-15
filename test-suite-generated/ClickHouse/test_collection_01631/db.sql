CREATE TABLE group_bitmap_data_test
(
    `pickup_date` Date,
    `city_id` UInt32,
    `uid` UInt32
)
ENGINE = Memory;
INSERT INTO group_bitmap_data_test SELECT
    '2019-01-01',
    1,
    number
FROM numbers(1, 50);
INSERT INTO group_bitmap_data_test SELECT
    '2019-01-02',
    1,
    number
FROM numbers(11, 60);
INSERT INTO group_bitmap_data_test SELECT
    '2019-01-03',
    2,
    number
FROM numbers(1, 10);
