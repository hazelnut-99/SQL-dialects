select positionUTF8(materialize('') as h, lowerUTF8('аБв' as n)) = positionCaseInsensitiveUTF8(h, n);
