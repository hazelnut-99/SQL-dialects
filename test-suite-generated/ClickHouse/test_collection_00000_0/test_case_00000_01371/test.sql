select positionUTF8('абв' as h, lowerUTF8('аБв' as n)) = positionCaseInsensitiveUTF8(h, n);
