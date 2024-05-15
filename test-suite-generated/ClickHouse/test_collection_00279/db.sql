DROP TABLE IF EXISTS nullable_00571;
CREATE TABLE nullable_00571 (x String) ENGINE = MergeTree ORDER BY x;
INSERT INTO nullable_00571 VALUES ('hello'), ('world');
ALTER TABLE nullable_00571 ADD COLUMN n Nullable(UInt64);
