DROP TABLE IF EXISTS t;
CREATE TABLE t (k UInt64, s String) ENGINE = MergeTree ORDER BY k;
INSERT INTO t VALUES (1, 'hello'), (2, 'world');
ALTER TABLE t FREEZE;
ALTER TABLE t UPDATE s = 'goodbye' WHERE k = 1;
ALTER TABLE t MODIFY COLUMN s Enum('goodbye' = 1, 'world' = 2);
ALTER TABLE t FREEZE;
