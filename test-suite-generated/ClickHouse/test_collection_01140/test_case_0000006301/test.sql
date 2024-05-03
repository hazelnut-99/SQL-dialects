select 10 as p, geohashEncode(longitude, latitude, p) as actual, if(actual = encoded, 'Ok', concat('expected: ', encoded)) from geohash_test_data WHERE length(encoded) = p;
