WITH
	'UTC' as timezone,
	CAST(1234567891011 AS Int64) AS val
SELECT
	val,
	toUnixTimestamp64Milli(fromUnixTimestamp64Milli(val, timezone)),
	toUnixTimestamp64Micro(fromUnixTimestamp64Micro(val, timezone)),
	toUnixTimestamp64Nano(fromUnixTimestamp64Nano(val, timezone)) AS v,
	toTypeName(v);;
