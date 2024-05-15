select position('абв' as h, lower('аБв' as n)) = positionCaseInsensitive(h, n);
