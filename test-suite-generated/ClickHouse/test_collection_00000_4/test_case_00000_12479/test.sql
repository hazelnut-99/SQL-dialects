select parseDateTimeInJodaSyntaxOrNull('2001 invalid 366 2000', 'yyyy D yyyy', 'UTC') IS NULL;
