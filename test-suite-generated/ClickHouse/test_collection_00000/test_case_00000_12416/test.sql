select parseDateTimeInJodaSyntax('1999 /11', 'yyyy /DD', 'UTC') = toDateTime('1999-01-11', 'UTC');
