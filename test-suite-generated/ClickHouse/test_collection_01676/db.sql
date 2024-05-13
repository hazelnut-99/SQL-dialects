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
WITH
    10413688942 AS timestamp,
    CAST(10413688942123 AS Int64) AS milli,
    CAST(10413688942123456 AS Int64) AS micro,
    CAST(10413688942123456789 AS Int64) AS nano,
    'UTC' AS tz
SELECT
    timestamp,
    fromUnixTimestamp64Milli(milli, tz),
    fromUnixTimestamp64Micro(micro, tz),
    fromUnixTimestamp64Nano(nano, tz);
