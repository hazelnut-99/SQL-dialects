SELECT dateDiff('second', materialize(toDateTime64('2015-08-18 00:00:00', 0, 'UTC')), toDateTime('2015-08-18 00:00:10', 'UTC'));
