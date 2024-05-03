SELECT age('day', materialize(toDate32('1927-01-01', 'UTC')), toDateTime64('1927-01-02 00:00:00', 3, 'UTC'), 'UTC');
