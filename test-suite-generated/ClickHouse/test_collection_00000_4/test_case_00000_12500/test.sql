SELECT
    bitmapHasAny(bitmapBuild([toUInt8(1)]), (
        SELECT groupBitmapState(toUInt8(1))
    )) has1,
    bitmapHasAny(bitmapBuild([toUInt64(1)]), (
        SELECT groupBitmapState(toUInt64(2))
    )) has2;
