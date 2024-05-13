select position(materialize('абв') as h, lower('В' as n)) = positionCaseInsensitive(h, n);
