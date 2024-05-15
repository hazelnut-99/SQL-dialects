WITH toDateTime('2021-08-15 18:57:56', 'Asia/Shanghai') AS dt
SELECT dt, dateTimeToSnowflake(dt), materialize(dateTimeToSnowflake(dt));
WITH toDateTime64('2021-08-15 18:57:56.492', 3, 'Asia/Shanghai') AS dt64
SELECT dt64, dateTime64ToSnowflake(dt64), materialize(dateTime64ToSnowflake(dt64));
