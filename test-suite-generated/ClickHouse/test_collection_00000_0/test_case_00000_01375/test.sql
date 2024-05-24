select positionUTF8(materialize('абв') as h, lowerUTF8('' as n)) = positionCaseInsensitiveUTF8(h, n);
