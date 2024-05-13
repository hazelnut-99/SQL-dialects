SELECT count(*) FROM test WHERE bitmapContains(bitmapBuild([1, 5, 7, 9]), toUInt16(num));
