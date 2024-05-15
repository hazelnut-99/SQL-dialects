select parseDateTimeInJodaSyntax('+99 02', 'yy MM', 'UTC') = toDateTime('1999-02-01', 'UTC');
