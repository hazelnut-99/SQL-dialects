WITH
    toDateTime64('2282-12-31 23:59:59.999998', 6, 'UTC') AS dt1,
    toDateTime64('2282-12-31 23:59:59.999999', 6, 'UTC') AS dt2
SELECT
        dt1 < dt2,
        (dt1 + INTERVAL 1 MICROSECOND) = dt2,
        (dt1 + INTERVAL 2 MICROSECOND) > dt2,
        (dt1 + INTERVAL 3 MICROSECOND) > dt2;
