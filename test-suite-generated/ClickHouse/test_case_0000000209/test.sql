SELECT age('day', toDate32('2015-08-18', 'UTC'), materialize(toDate('2015-08-19', 'UTC')), 'UTC');
