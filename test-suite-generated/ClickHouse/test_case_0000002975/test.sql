SELECT dateDiff('day', materialize(toDate('2015-08-18', 'UTC')), materialize(toDateTime64('2015-08-19 00:00:00', 3, 'UTC')));
