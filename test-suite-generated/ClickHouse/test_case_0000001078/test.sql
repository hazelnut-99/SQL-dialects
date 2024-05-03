SELECT count(*) FROM test WHERE bitmapContains(bitmapBuild([1, 5, 7, 9]), toUInt32(num));
