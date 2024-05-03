SELECT count(*) FROM bitmap_test WHERE bitmapHasAny(bitmapBuild([uid]), (SELECT groupBitmapState(uid) FROM bitmap_test WHERE pickup_date = '2019-01-01'));
