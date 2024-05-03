WITH
	'UTC' as timezone,
	toDateTime64('2019-09-16 19:20:12.345678910', 3, timezone) AS dt64
SELECT
	dt64,
	fromUnixTimestamp64Milli(toUnixTimestamp64Milli(dt64), timezone),
	fromUnixTimestamp64Micro(toUnixTimestamp64Micro(dt64), timezone),
	fromUnixTimestamp64Nano(toUnixTimestamp64Nano(dt64), timezone) AS v,
	toTypeName(v);
