SELECT age('second', materialize(toDateTime64('1927-01-01 00:00:00', 0, 'UTC')), materialize(toDateTime64('1927-01-01 00:00:10', 0, 'UTC')));
