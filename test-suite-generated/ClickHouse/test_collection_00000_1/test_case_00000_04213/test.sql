SELECT toDate('1970-01-01') + number AS d, toISOWeek(d), toISOYear(d) FROM numbers(15);
