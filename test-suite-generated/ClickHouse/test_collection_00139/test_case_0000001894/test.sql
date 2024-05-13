select position(materialize('абв') as h, lower('Бв' as n)) = positionCaseInsensitive(h, n);
