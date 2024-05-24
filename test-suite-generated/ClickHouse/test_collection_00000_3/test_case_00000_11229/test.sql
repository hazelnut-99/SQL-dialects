SELECT age('day', materialize(toDateTime64('2015-08-18 00:00:00', 0, 'UTC')), materialize(toDate('2015-08-19', 'UTC')));
