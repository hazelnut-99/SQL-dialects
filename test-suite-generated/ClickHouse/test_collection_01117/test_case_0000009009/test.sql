SELECT subtractYears(date, 1), subtractYears(date_time, 1) FROM VALUES('date Date, date_time DateTime', (toDate('2019-01-01'), toDateTime('2019-01-01 00:00:00')));
