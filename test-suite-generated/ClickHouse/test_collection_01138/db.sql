WITH
	CAST(1234567891011 AS Int64) AS i64,
	'UTC' AS tz
SELECT
	tz,
	i64,
	fromUnixTimestamp64Milli(i64, tz),
	fromUnixTimestamp64Micro(i64, tz),
	fromUnixTimestamp64Nano(i64, tz) as dt64,
	toTypeName(dt64);
WITH
	CAST(1234567891011 AS Int64) AS i64,
	'Asia/Makassar' AS tz
SELECT
	tz,
	i64,
	fromUnixTimestamp64Milli(i64, tz),
	fromUnixTimestamp64Micro(i64, tz),
	fromUnixTimestamp64Nano(i64, tz) as dt64,
	toTypeName(dt64);
WITH
	CAST(1234567891011 AS Int64) AS i64,
	'UTC' AS tz
SELECT
	i64,
	fromUnixTimestamp64Milli(i64, tz),
	fromUnixTimestamp64Micro(i64, tz),
	fromUnixTimestamp64Nano(i64, tz) as dt64;
