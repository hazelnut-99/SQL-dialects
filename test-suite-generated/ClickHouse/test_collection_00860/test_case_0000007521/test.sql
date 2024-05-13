select bitmapHasAll(bitmapBuild([1,5,7,9]),bitmapXor(bitmapBuild([1,5,7]), bitmapBuild([5,7,9])));
