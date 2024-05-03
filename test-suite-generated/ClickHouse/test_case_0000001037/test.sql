SELECT dateDiff('second', toDate32('2015-08-18'), toDate('2015-08-19')) - timeDiff(toDate32('2015-08-18'), toDate('2015-08-19')) <= 2;
