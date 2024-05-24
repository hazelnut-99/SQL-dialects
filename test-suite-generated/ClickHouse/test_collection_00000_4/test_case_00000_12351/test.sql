select parseDateTimeInJodaSyntax('AD 1999 2000', 'G yyyy YYYY', 'UTC') = toDateTime('2000-01-01', 'UTC');
