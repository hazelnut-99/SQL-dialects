WITH toDateTime64('2019-09-16 19:20:12.345678910', 3, 'Asia/Istanbul') AS dt64
SELECT dt64, toUnixTimestamp64Milli(dt64), toUnixTimestamp64Micro(dt64), toUnixTimestamp64Nano(dt64);
WITH toDateTime64('2019-09-16 19:20:12.345678910', 6, 'Asia/Istanbul') AS dt64
SELECT dt64, toUnixTimestamp64Milli(dt64), toUnixTimestamp64Micro(dt64), toUnixTimestamp64Nano(dt64);
WITH toDateTime64('2019-09-16 19:20:12.345678910', 9, 'Asia/Istanbul') AS dt64
SELECT dt64, toUnixTimestamp64Milli(dt64), toUnixTimestamp64Micro(dt64), toUnixTimestamp64Nano(dt64);
