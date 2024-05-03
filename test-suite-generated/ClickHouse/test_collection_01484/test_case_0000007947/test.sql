SELECT 'Asia/Pyongyang', rand() as r, toHour(toDateTime(r, 'Asia/Pyongyang') AS t) AS h, t, toTypeName(t) FROM numbers(1000000) WHERE h < 0 OR h > 23 ORDER BY h LIMIT 1 BY h;
