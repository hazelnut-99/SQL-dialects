select parseDateTime('00 PM', '%H %p', 'UTC') = toDateTime('1970-01-01 00:00:00', 'UTC');
