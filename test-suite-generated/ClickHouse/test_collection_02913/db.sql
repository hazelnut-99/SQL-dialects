DROP TABLE IF EXISTS predicate_table;
CREATE TABLE predicate_table (value UInt8) ENGINE=TinyLog;
INSERT INTO predicate_table VALUES (0), (1);
WITH toDate('2000-01-01') as a, toDateTime('2000-01-01', 'Asia/Istanbul') as b
SELECT if(value, b, a) as result, toTypeName(result)
FROM predicate_table;
WITH toDateTime('2000-01-01', 'Asia/Istanbul') as a, toDateTime64('2000-01-01', 5, 'Asia/Istanbul') as b
SELECT if(value, b, a) as result, toTypeName(result)
FROM predicate_table;
