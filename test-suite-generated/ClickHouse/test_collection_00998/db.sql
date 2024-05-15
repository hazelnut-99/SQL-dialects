DROP TABLE IF EXISTS prewhere;
CREATE TABLE prewhere (light UInt8, heavy String) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO prewhere SELECT 0, randomPrintableASCII(10000) FROM numbers(10000);
