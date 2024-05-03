SELECT age('day', materialize(toDate32('1927-01-01', 'UTC')), toDate32('1927-01-02', 'UTC'), 'UTC');
