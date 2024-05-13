DROP TABLE IF EXISTS testJoinTable;
DROP TABLE IF EXISTS master;
DROP TABLE IF EXISTS transaction;
CREATE TABLE transaction (id Int32, value Float64, master_id Int32) ENGINE = MergeTree() ORDER BY id;
INSERT INTO transaction VALUES (1, 52.5, 1);
DROP TABLE transaction;
