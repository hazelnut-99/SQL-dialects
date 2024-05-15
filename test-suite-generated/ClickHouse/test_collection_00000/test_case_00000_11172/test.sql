SELECT age('day', materialize(toDate32('2015-08-18', 'UTC')), toDate('2015-08-19', 'UTC'), 'UTC');
