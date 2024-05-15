SELECT dateDiff('day', materialize(toDate32('2015-08-18', 'UTC')), toDateTime('2015-08-19 00:00:00', 'UTC'), 'UTC');
