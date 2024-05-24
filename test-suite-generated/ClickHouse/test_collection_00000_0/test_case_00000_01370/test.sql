select positionUTF8('' as h, lowerUTF8('аБв' as n)) = positionCaseInsensitiveUTF8(h, n);
