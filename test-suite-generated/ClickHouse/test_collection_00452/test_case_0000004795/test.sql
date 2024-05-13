SELECT dateDiff('minute', toDate('2017-12-31'), materialize(toDate('2017-01-01')), 'UTC');
