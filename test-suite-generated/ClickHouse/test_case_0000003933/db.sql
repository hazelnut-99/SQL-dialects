DROP TABLE IF EXISTS t_uuid;
CREATE TABLE t_uuid (x UUID) ENGINE=MergeTree ORDER BY x;
INSERT INTO t_uuid VALUES ('61f0c404-5cb3-11e7-907b-a6006ad3dba0');
