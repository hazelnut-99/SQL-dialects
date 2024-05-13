select position(materialize('') as h, lower('' as n)) = positionCaseInsensitive(h, n);
