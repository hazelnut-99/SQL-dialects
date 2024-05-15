select positionCaseInsensitive(materialize('abc') as h, lower('Bc' as n)) = positionCaseInsensitive(h, n);
