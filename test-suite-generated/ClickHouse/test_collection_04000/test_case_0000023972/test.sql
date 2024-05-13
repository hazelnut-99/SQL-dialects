select parseDateTime('12 PM', '%h %p', 'UTC') = toDateTime('1970-01-01 12:00:00', 'UTC');
