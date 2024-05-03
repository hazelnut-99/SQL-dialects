WITH
    toDateTime64('2001-12-31 23:59:59.999999998', 9, 'UTC') AS dt1,
    toDateTime64('2001-12-31 23:59:59.999999999', 9, 'UTC') AS dt2
SELECT
        dt1 < dt2,
        (dt1 + INTERVAL 1 NANOSECOND) = dt2,
        (dt1 + INTERVAL 2 NANOSECOND) > dt2,
        (dt1 + INTERVAL 3 NANOSECOND) > dt2;
