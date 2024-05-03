SELECT any( toDateTime('2020-01-01T00:00:00', 'UTC'))
FROM e JOIN ( SELECT 1 joinKey) AS da ON joinKey = a
PREWHERE t >= toDateTime('2021-07-19T13:00:00', 'UTC');
