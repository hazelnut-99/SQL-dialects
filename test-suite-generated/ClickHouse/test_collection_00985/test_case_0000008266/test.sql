SELECT toString(t, 'UTC'), toDate(t), toStartOfDay(t), toStartOfQuarter(t), toTime(t), toStartOfMinute(t) FROM A ORDER BY t;
