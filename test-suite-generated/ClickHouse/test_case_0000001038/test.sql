SELECT dateDiff('second', toDate('2015-08-18'), toDate32('2015-08-19')) - timeDiff(toDate('2015-08-18'), toDate32('2015-08-19')) <= 2;
