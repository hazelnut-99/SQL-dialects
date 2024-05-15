select position(materialize('абв') as h, lower('' as n)) = positionCaseInsensitive(h, n);
