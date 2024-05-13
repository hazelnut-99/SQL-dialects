select position(materialize('') as h, lower('аБв' as n)) = positionCaseInsensitive(h, n);
