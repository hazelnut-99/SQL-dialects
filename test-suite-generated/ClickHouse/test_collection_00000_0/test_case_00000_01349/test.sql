select positionCaseInsensitive(materialize('abc') as h, lower('C' as n)) = positionCaseInsensitive(h, n);
