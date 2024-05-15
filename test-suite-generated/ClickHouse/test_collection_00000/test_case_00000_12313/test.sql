select parseDateTime('01 AM', '%h %p', 'UTC') = toDateTime('1970-01-01 01:00:00', 'UTC');
