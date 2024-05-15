select positionUTF8(materialize('абв') as h, lowerUTF8('В' as n)) = positionCaseInsensitiveUTF8(h, n);
