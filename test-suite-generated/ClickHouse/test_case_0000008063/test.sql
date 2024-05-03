SELECT sumIf( 1, if( 1, toDateTime('2020-01-01 00:00:00', 'UTC'), toDateTime('1970-01-01 00:00:00', 'UTC')) > t )
FROM e JOIN ( SELECT 1 joinKey) AS da ON joinKey = a
WHERE  t >= toDateTime('2021-07-19T13:00:00', 'UTC') AND t <= toDateTime('2021-07-19T13:59:59', 'UTC');
