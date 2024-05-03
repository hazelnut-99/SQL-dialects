SELECT dateDiff('day', toDate32('1927-01-01', 'UTC'), materialize(toDate32('1927-01-02', 'UTC')), 'UTC');
