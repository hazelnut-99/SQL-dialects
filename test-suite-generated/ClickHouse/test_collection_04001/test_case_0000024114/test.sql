select parseDateTimeInJodaSyntax('11 PM', 'K a', 'UTC') = toDateTime('1970-01-01 23:00:00', 'UTC');
