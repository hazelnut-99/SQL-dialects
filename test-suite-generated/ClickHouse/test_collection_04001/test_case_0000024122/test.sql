select parseDateTimeInJodaSyntax('0 1 AM', 'H h a', 'UTC') = toDateTime('1970-01-01 01:00:00', 'UTC');
