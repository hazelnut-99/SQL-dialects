select parseDateTime('1980 366', '%Y %j', 'UTC') = toDateTime('1980-12-31', 'UTC');
