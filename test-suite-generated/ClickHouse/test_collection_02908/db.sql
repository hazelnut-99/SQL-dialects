DROP TABLE IF EXISTS t_projections_lwd;
CREATE TABLE t_projections_lwd (a UInt32, b UInt32, PROJECTION p (SELECT * ORDER BY b)) ENGINE = MergeTree ORDER BY a;
INSERT INTO t_projections_lwd SELECT number, number FROM numbers(100);
KILL MUTATION WHERE database = currentDatabase() AND table = 't_projections_lwd' SYNC FORMAT Null;
ALTER TABLE t_projections_lwd DROP projection p;
DELETE FROM t_projections_lwd WHERE a = 2;
