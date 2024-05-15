SELECT toDateTime(toDate('2016-12-22') + number, 'Asia/Istanbul' ) AS d, 
    toWeek(d, 8, 'Asia/Istanbul') AS week8, 
    toWeek(d, 9, 'Asia/Istanbul') AS week9, 
    toYearWeek(d, 8, 'Asia/Istanbul') AS yearWeek8,
    toYearWeek(d, 9, 'Asia/Istanbul') AS yearWeek9
FROM numbers(21);
