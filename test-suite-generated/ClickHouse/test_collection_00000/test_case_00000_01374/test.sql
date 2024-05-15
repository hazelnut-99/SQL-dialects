select positionUTF8(materialize('') as h, lowerUTF8('' as n)) = positionCaseInsensitiveUTF8(h, n);
