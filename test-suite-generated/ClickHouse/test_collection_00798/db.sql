DROP TABLE IF EXISTS no_order;
CREATE TABLE no_order(a UInt32, b UInt32) ENGINE = MergeTree ORDER BY tuple();
DROP TABLE no_order;
DROP TABLE IF EXISTS old_style;
DROP TABLE IF EXISTS summing;
CREATE TABLE summing(x UInt32, y UInt32, val UInt32) ENGINE SummingMergeTree ORDER BY (x, y);
ALTER TABLE summing ADD COLUMN z UInt32 AFTER y, MODIFY ORDER BY (x, y, -z);
INSERT INTO summing(x, y, z, val) values (1, 2, 0, 10), (1, 2, 1, 30), (1, 2, 2, 40);
