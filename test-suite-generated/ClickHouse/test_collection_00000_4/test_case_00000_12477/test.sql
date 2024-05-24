select parseDateTimeInJodaSyntaxOrZero('2001 invalid 366 2000', 'yyyy D yyyy', 'UTC') = toDateTime('1970-01-01', 'UTC');
