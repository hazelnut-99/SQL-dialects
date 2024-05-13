select positionUTF8('абв' as h, lowerUTF8('Бв' as n)) = positionCaseInsensitiveUTF8(h, n);
