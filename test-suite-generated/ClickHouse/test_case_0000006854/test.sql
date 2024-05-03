SELECT
    toTimeZone(timestamp, 'America/Sao_Paulo') AS converted,
    timestamp AS original
FROM test
WHERE timestamp >= toDateTime('2020-05-13T00:00:00', 'America/Sao_Paulo');
