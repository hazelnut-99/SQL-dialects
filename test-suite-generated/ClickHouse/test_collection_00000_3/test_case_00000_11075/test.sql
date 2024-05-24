SELECT age('minute', materialize(toDate('2017-12-31')), materialize(toDate('2018-01-01')), 'UTC');
