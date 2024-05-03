WITH
    toDate('2018-12-25') + number AS d,
    toDate32(d) AS d32,
    toDateTime(d) AS dt,
    toDateTime64(d, 0) AS dt64
SELECT
    dt64,
    toStartOfWeek(d) AS wd_sun,
    toStartOfWeek(d32) AS wd32_sun,
    toStartOfWeek(dt) AS wdt_sun,
    toStartOfWeek(dt64) AS wdt64_sun,
    toStartOfWeek(d, 1) AS wd_mon,
    toStartOfWeek(d32, 1) AS wd32_mon,
    toStartOfWeek(dt, 1) AS wdt_mon,
    toStartOfWeek(dt64, 1) AS wdt64_mon
FROM numbers(10);
