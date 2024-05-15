DROP TABLE IF EXISTS t_lwd_mutations;
CREATE TABLE t_lwd_mutations(id UInt64, v UInt64) ENGINE = MergeTree ORDER BY id;
INSERT INTO t_lwd_mutations SELECT number, 0 FROM numbers(1000);
DELETE FROM t_lwd_mutations WHERE id % 10 = 0;
ALTER TABLE t_lwd_mutations UPDATE v = 1 WHERE id % 4 = 0, DELETE WHERE id % 10 = 1;
DELETE FROM t_lwd_mutations WHERE id % 10 = 2;
