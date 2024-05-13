select parseDateTime('07 am', '%H %p', 'UTC') = toDateTime('1970-01-01 07:00:00', 'UTC');
