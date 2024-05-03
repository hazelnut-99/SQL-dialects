SELECT
    'metric' || toString(number) AS name,
    number AS value,
    if(number % 2 == 0, 'info '  || toString(number), NULL) AS help,
    if(number % 3 == 0, 'counter', NULL) AS type,
    if(number == 2, 1395066363000, NULL) AS timestamp
FROM numbers(5)
FORMAT Prometheus;
