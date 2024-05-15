DROP TABLE IF EXISTS check_system_tables;
DROP TABLE IF EXISTS check_system_tables;
DROP TABLE IF EXISTS check_system_tables;
DROP TABLE IF EXISTS check_system_tables;
CREATE TABLE check_system_tables (key UInt8) ENGINE = TinyLog();
INSERT INTO check_system_tables VALUES (1);
DROP TABLE check_system_tables;
CREATE TABLE check_system_tables (key UInt8) ENGINE = Log();
INSERT INTO check_system_tables VALUES (1);
DROP TABLE check_system_tables;
CREATE TABLE check_system_tables (key UInt8) ENGINE = StripeLog();
INSERT INTO check_system_tables VALUES (1);
DROP TABLE check_system_tables;
CREATE TABLE check_system_tables (key UInt16) ENGINE = Memory();
INSERT INTO check_system_tables VALUES (1);
DROP TABLE check_system_tables;
DROP TABLE IF EXISTS check_system_tables;
DROP TABLE IF EXISTS check_system_tables_null;
CREATE TABLE check_system_tables_null (key UInt16) ENGINE = Null();
CREATE TABLE check_system_tables (key UInt16) ENGINE = Buffer(
    currentDatabase(),
    check_system_tables_null,
    2,
    0,   100, /* min_time /max_time */
    100, 100, /* min_rows /max_rows */
    0,   1e6  /* min_bytes/max_bytes */
);
INSERT INTO check_system_tables SELECT * FROM numbers_mt(50);
OPTIMIZE TABLE check_system_tables; -- flush
INSERT INTO check_system_tables SELECT * FROM numbers_mt(50);
OPTIMIZE TABLE check_system_tables; -- flush
INSERT INTO check_system_tables SELECT * FROM numbers_mt(101); -- direct block write (due to min_rows exceeded)
DROP TABLE check_system_tables;
DROP TABLE check_system_tables_null;
CREATE TABLE check_system_tables Engine=Set() AS SELECT * FROM numbers(50);
INSERT INTO check_system_tables SELECT number+50 FROM numbers(50);
DROP TABLE check_system_tables;
