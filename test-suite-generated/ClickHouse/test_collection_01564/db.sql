DROP TABLE IF EXISTS distinct_two_level;
CREATE TABLE distinct_two_level (
    time DateTime64(3),
    domain String,
    subdomain String
) ENGINE = MergeTree ORDER BY time;
INSERT INTO distinct_two_level SELECT 1546300800000, 'test.com', concat('foo', toString(number % 10000)) from numbers(10000);
INSERT INTO distinct_two_level SELECT 1546300800000, concat('test.com', toString(number / 10000)) , concat('foo', toString(number % 10000)) from numbers(10000);
