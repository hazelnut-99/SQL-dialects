select parseDateTime('00 pm', '%H %p', 'UTC') = toDateTime('1970-01-01 00:00:00', 'UTC');
