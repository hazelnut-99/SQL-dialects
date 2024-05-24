SELECT bitmapToArray(bitmapAnd(bitmapBuild([100, 200, 500]), bitmapBuild(CAST([100, 200], 'Array(UInt16)'))));
