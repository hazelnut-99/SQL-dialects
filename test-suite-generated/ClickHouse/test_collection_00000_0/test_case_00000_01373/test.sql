select positionUTF8('абв' as h, lowerUTF8('в' as n)) = positionCaseInsensitiveUTF8(h, n);
