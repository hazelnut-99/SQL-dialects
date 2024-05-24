select positionCaseInsensitive(materialize('abc') as h, '' as n) = positionCaseInsensitive(h, n);
