DROP TABLE IF EXISTS u32;
DROP TABLE IF EXISTS u64;
DROP TABLE IF EXISTS merge_32_64;
CREATE TABLE u32 (x UInt32, y UInt32 DEFAULT x) ENGINE = Memory;
CREATE TABLE u64 (x UInt64, y UInt64 DEFAULT x) ENGINE = Memory;
CREATE TABLE merge_32_64 (x UInt64) ENGINE = Merge(currentDatabase(), '^u32|u64$');
INSERT INTO u32 (x) VALUES (1);
INSERT INTO u64 (x) VALUES (1);
INSERT INTO u32 (x) VALUES (4294967290);
INSERT INTO u64 (x) VALUES (4294967290);
INSERT INTO u64 (x) VALUES (4294967299);
DROP TABLE u32;
DROP TABLE u64;
DROP TABLE merge_32_64;
DROP TABLE IF EXISTS s64;
DROP TABLE IF EXISTS u64;
DROP TABLE IF EXISTS merge_s64_u64;
CREATE TABLE s64 (x Int64) ENGINE = Memory;
CREATE TABLE u64 (x UInt64) ENGINE = Memory;
CREATE TABLE merge_s64_u64 (x UInt64) ENGINE = Merge(currentDatabase(), '^s64|u64$');
INSERT INTO s64 VALUES (1);
INSERT INTO s64 VALUES (-1);
INSERT INTO u64 VALUES (1);
DROP TABLE s64;
DROP TABLE u64;
DROP TABLE merge_s64_u64;
DROP TABLE IF EXISTS one_00458;
DROP TABLE IF EXISTS two_00458;
DROP TABLE IF EXISTS merge_one_two;
CREATE TABLE one_00458 (x Int32) ENGINE = Memory;
CREATE TABLE two_00458 (x UInt64) ENGINE = Memory;
CREATE TABLE merge_one_two (x UInt64) ENGINE = Merge(currentDatabase(), '^one_00458$|^two_00458$');
INSERT INTO one_00458 VALUES (1);
INSERT INTO two_00458 VALUES (1);
INSERT INTO one_00458 VALUES (2147483650);
INSERT INTO two_00458 VALUES (2147483650);
