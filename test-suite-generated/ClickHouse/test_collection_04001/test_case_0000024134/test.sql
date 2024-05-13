select parseDateTimeInJodaSyntaxOrNull('2001 366 2000', 'yyyy D yyyy', 'UTC') = toDateTime('2000-12-31', 'UTC');
