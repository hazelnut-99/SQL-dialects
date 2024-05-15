WITH toDateTime64('2019-09-16 19:20:11', 3, 'Asia/Istanbul') AS dt64 SELECT toStartOfSecond(dt64, 'UTC') AS res, toTypeName(res);
WITH toDateTime64('2019-09-16 19:20:11', 0, 'UTC') AS dt64 SELECT toStartOfSecond(dt64) AS res, toTypeName(res);
WITH toDateTime64('2019-09-16 19:20:11.123', 3, 'UTC') AS dt64 SELECT toStartOfSecond(dt64) AS res, toTypeName(res);
WITH toDateTime64('2019-09-16 19:20:11.123', 9, 'UTC') AS dt64 SELECT toStartOfSecond(dt64) AS res, toTypeName(res);
