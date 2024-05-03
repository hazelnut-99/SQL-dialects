DROP TEMPORARY TABLE IF EXISTS src;
DROP TABLE IF EXISTS dst;
DROP TABLE IF EXISTS rdst;
CREATE TEMPORARY TABLE src (p UInt64, k String, d UInt64) ENGINE = MergeTree PARTITION BY p ORDER BY k;
CREATE TABLE dst (p UInt64, k String, d UInt64) ENGINE = MergeTree PARTITION BY p ORDER BY k;
CREATE TABLE rdst (p UInt64, k String, d UInt64) ENGINE = ReplicatedMergeTree('/clickhouse/tables/{database}/test_alter_attach_00626_rdst', 'r1') PARTITION BY p ORDER BY k;
