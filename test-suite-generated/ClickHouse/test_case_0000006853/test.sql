SELECT
    toTimeZone(timestamp, 'America/Sao_Paulo') AS converted,
    timestamp AS original
FROM test
LEFT JOIN (SELECT 2 AS x) AS anything ON x = i
WHERE timestamp >= toDateTime('2020-05-13T00:00:00', 'America/Sao_Paulo');
