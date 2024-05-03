WITH
	toDateTime64('2019-09-16 19:20:12.345678910', 6) AS dt64
SELECT
	dt64,
	fromUnixTimestamp64Milli(toUnixTimestamp64Milli(dt64)),
	fromUnixTimestamp64Micro(toUnixTimestamp64Micro(dt64)),
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(dt64));
