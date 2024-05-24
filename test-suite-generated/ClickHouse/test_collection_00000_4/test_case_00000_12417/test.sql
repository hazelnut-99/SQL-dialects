select parseDateTimeInJodaSyntax('1999 /31/', 'yyyy /DD/', 'UTC') = toDateTime('1999-01-31', 'UTC');
