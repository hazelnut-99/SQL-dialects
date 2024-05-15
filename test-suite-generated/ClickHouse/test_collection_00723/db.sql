-- precision greater than 12 is truncated to 12, so these two calls would produce same result as above
SELECT arraySort(geohashesInBox(20.0, 20.0, 20.000001, 20.000001, 13));
