DROP TABLE IF EXISTS parallel_replicas;
DROP TABLE IF EXISTS parallel_replicas_backup;
CREATE TABLE parallel_replicas_backup(d Date DEFAULT today(), x UInt32, u UInt64, s String) ENGINE = Memory;
