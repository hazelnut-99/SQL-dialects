SELECT age('day', materialize(toDateTime('2015-08-18 00:00:00', 'UTC')), materialize(toDate32('2015-08-19', 'UTC')), 'UTC');
