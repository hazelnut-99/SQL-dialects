SELECT any(toDateTime('2020-01-01 00:00:00'))
FROM e JOIN ( SELECT 1 joinKey) AS da ON joinKey = a
PREWHERE t >= toDateTime('2020-01-01 00:00:00');
