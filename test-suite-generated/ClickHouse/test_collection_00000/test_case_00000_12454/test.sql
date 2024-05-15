select parseDateTimeInJodaSyntax('0 PM', 'K a', 'UTC') = toDateTime('1970-01-01 12:00:00', 'UTC');
