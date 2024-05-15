SELECT bitmapToArray(bitmapAnd(groupBitmapState(uid), bitmapBuild(CAST([1, 2, 3], 'Array(UInt32)')))) FROM bitmap_test GROUP BY city_id ORDER BY city_id;
