SELECT dateDiff('second', toDate32('2015-08-18'), toDateTime('2015-08-19 00:00:00')) - timeDiff(toDate32('2015-08-18'), toDateTime('2015-08-19 00:00:00')) <= 2;
