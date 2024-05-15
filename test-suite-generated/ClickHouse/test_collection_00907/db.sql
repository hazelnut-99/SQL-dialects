DROP TABLE IF EXISTS testmt;
CREATE TABLE testmt (`CounterID` UInt64, `value` String) ENGINE = MergeTree() ORDER BY CounterID;
INSERT INTO testmt VALUES (1, '1'), (2, '2');
