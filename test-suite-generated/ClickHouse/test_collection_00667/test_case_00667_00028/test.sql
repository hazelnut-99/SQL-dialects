select
	geohashDecode(encoded) as actual,
	'expected:', encoded, '=>', latitude, longitude,
	'length:', 	length(encoded),
	'max lat error:', 180 / power(2, 2.5 * length(encoded)) as latitude_max_error,
	'max lon error:', 360 / power(2, 2.5 * length(encoded)) as longitude_max_error,
	'err:', (actual.2 - latitude) as lat_error, (actual.1 - longitude) as lon_error,
	'derr:', abs(lat_error) - latitude_max_error, abs(lon_error) - longitude_max_error
from geohash_test_data
where
	abs(lat_error) > latitude_max_error
	or
	abs(lon_error) > longitude_max_error;
