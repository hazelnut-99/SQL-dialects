select positionCaseInsensitive(materialize('abc') as h, lower('aBc' as n)) = positionCaseInsensitive(h, n);
