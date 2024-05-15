SELECT uid, date, toDate(date) = toDate('2021-03-24') AS res FROM table WHERE toDate(date) = toDate('2021-03-24') ORDER BY uid, date;
