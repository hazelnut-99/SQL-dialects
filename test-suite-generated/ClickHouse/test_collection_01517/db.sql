DROP TABLE IF EXISTS foo;
DROP TABLE IF EXISTS bar;
CREATE TABLE foo (server_date Date, server_time Datetime('Asia/Istanbul'), dimension_1 String) ENGINE = MergeTree() PARTITION BY toYYYYMM(server_date) ORDER BY (server_date);
CREATE TABLE bar (server_date Date, dimension_1 String) ENGINE = MergeTree() PARTITION BY toYYYYMM(server_date) ORDER BY (server_date);
INSERT INTO foo VALUES ('2020-01-01', '2020-01-01 12:00:00', 'test1'), ('2020-01-01', '2020-01-01 13:00:00', 'test2');
INSERT INTO bar VALUES ('2020-01-01', 'test2'), ('2020-01-01', 'test3');
