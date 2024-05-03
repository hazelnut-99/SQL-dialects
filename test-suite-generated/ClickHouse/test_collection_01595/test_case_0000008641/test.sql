SELECT
    max(time),
    max(toNullable(time)),
    min(time),
    min(toNullable(time)),
    argMax(value, time),
    argMax(value, toNullable(time)),
    argMin(value, time),
    argMin(value, toNullable(time)),
    argMinIf(value, toNullable(time), time != '2021-01-01 00:00:00.000'),
    argMaxIf(value, toNullable(time), time != '2021-01-01 00:00:59.000'),
FROM test
WHERE (time >= fromUnixTimestamp64Milli(1609459200000, 'UTC')) AND (time < fromUnixTimestamp64Milli(1609459260000, 'UTC')) FORMAT Vertical;
