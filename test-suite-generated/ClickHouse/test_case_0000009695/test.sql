SELECT (SELECT toIntervalMinute(5)) AS interval, toDateTime('2017-01-01 00:00:00') + interval AS res;
