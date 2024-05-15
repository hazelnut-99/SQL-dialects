DROP TABLE IF EXISTS 02005_test_table;
CREATE TABLE 02005_test_table
(
    value Map(Int64, Int64)
)
ENGINE = TinyLog;
TRUNCATE TABLE 02005_test_table;
INSERT INTO 02005_test_table VALUES (map(0, 5));
TRUNCATE TABLE 02005_test_table;
INSERT INTO 02005_test_table VALUES (map(0, 5, 5, 10));
TRUNCATE TABLE 02005_test_table;
INSERT INTO 02005_test_table VALUES (map(-5, -5, 0, 5, 5, 10));
TRUNCATE TABLE 02005_test_table;
INSERT INTO 02005_test_table VALUES (map(-5, -5, 0, 5, 5, 10, 10, 15));
TRUNCATE TABLE 02005_test_table;
TRUNCATE TABLE 02005_test_table;
INSERT INTO 02005_test_table VALUES (map(0, 5));
TRUNCATE TABLE 02005_test_table;
INSERT INTO 02005_test_table VALUES (map(0, 5, 5, 10));
