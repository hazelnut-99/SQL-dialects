select parseDateTime('2001 366 2000', '%Y %j %Y', 'UTC') = toDateTime('2000-12-31', 'UTC');
