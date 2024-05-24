select parseDateTimeInJodaSyntax('1 AM 12', 'h a H', 'UTC') = toDateTime('1970-01-01 12:00:00', 'UTC');
