DROP TABLE IF EXISTS t_uuid;
CREATE TABLE t_uuid (x UUID) ENGINE=TinyLog;
INSERT INTO t_uuid SELECT generateUUIDv4();
INSERT INTO t_uuid SELECT generateUUIDv4();
INSERT INTO t_uuid SELECT generateUUIDv4();
INSERT INTO t_uuid SELECT generateUUIDv4();
