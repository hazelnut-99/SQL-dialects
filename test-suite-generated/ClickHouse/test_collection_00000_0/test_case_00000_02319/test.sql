SELECT (toDateTime('2000-01-01 12:00:00') + INTERVAL 1234567 NANOSECOND) x, toTypeName(x);
