SELECT age('day', materialize(toDate('2015-08-18', 'UTC')), toDate32('2015-08-19', 'UTC'), 'UTC');
