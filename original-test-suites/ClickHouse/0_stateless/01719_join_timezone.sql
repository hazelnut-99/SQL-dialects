DROP TABLE IF EXISTS test;

CREATE TABLE test (timestamp DateTime('UTC'), i UInt8) Engine=MergeTree() PARTITION BY toYYYYMM(timestamp) ORDER BY (i);
INSERT INTO test values ('2020-05-13 16:38:45', 1);

SELECT
    toTimeZone(timestamp, 'America/Sao_Paulo') AS converted,
    timestamp AS original
FROM test
LEFT JOIN (SELECT 2 AS x) AS anything ON x = i
WHERE timestamp >= toDateTime('2020-05-13T00:00:00', 'America/Sao_Paulo');


SELECT
    toTimeZone(timestamp, 'America/Sao_Paulo') AS converted,
    timestamp AS original
FROM test
-- LEFT JOIN (SELECT 2 AS x) AS anything ON x = i -- Removing the join fixes the issue.
WHERE timestamp >= toDateTime('2020-05-13T00:00:00', 'America/Sao_Paulo');


SELECT
    toTimeZone(timestamp, 'America/Sao_Paulo') AS converted,
    timestamp AS original
FROM test
LEFT JOIN (SELECT 2 AS x) AS anything ON x = i
WHERE timestamp >= '2020-05-13T00:00:00'; -- Not using toDateTime in the WHERE also fixes the issue.

DROP TABLE test;
