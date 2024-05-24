select parseDateTimeInJodaSyntax('0 PM', 'H a', 'UTC') = toDateTime('1970-01-01 00:00:00', 'UTC');
