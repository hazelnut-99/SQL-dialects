SELECT bitmapToArray(bitmapAnd(groupBitmapState(uid), bitmapBuild(CAST([4294967296, 4294967297, 4294967298], 'Array(UInt64)')))) FROM bitmap_test GROUP BY city_id ORDER BY city_id;
