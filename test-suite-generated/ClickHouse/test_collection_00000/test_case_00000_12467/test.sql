select parseDateTimeInJodaSyntax('12 1 PM', 'H h a', 'UTC') = toDateTime('1970-01-01 13:00:00', 'UTC');
