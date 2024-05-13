CREATE TABLE IF NOT EXISTS first engine = MergeTree PARTITION BY (inn, toYYYYMM(received)) ORDER BY (inn, sessionId)
AS SELECT now() AS received, '123456789' AS inn, '42' AS sessionId;
CREATE TABLE IF NOT EXISTS second engine = MergeTree PARTITION BY (inn, toYYYYMM(received)) ORDER BY (inn, sessionId)
AS SELECT now() AS received, '123456789' AS inn, '42' AS sessionId, '111' AS serial, '222' AS reg;
