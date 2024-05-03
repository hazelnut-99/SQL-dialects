WITH
	CAST(1234567891011 AS Int64) AS val
SELECT
	val,
	toUnixTimestamp64Milli(fromUnixTimestamp64Milli(val)),
	toUnixTimestamp64Micro(fromUnixTimestamp64Micro(val)),
	toUnixTimestamp64Nano(fromUnixTimestamp64Nano(val));
