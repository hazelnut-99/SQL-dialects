SELECT dateDiff('second', toDate32('1927-01-01'), toDateTime64('1927-01-02 00:00:00', 3)) - timeDiff(toDate32('1927-01-01'), toDateTime64('1927-01-02 00:00:00', 3)) <= 2;
