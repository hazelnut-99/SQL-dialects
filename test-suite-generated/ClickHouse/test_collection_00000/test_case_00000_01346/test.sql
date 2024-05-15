select positionCaseInsensitive(materialize('') as h, lower('aBc' as n)) = positionCaseInsensitive(h, n);
