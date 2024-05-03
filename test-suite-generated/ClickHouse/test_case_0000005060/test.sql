WITH
    toDate('2018-12-25') + number AS d,
    toDate32(d) AS d32,
    toDateTime(d) AS dt,
    toDateTime64(d, 0) AS dt64
SELECT
    dt64,
    toLastDayOfWeek(d) AS wd_sun,
    toLastDayOfWeek(d32) AS wd32_sun,
    toLastDayOfWeek(dt) AS wdt_sun,
    toLastDayOfWeek(dt64) AS wdt64_sun,
    toLastDayOfWeek(d, 1) AS wd_mon,
    toLastDayOfWeek(d32, 1) AS wd32_mon,
    toLastDayOfWeek(dt, 1) AS wdt_mon,
    toLastDayOfWeek(dt64, 1) AS wdt64_mon
FROM numbers(10);
