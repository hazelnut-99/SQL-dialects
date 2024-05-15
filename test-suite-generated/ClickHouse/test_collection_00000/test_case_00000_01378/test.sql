select positionUTF8(materialize('абв') as h, lowerUTF8('Бв' as n)) = positionCaseInsensitiveUTF8(h, n);
