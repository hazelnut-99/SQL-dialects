CREATE TABLE foo (server_date Date, dimension_1 String, metric_1 UInt32) ENGINE = MergeTree() PARTITION BY toYYYYMM(server_date) ORDER BY (server_date);
CREATE TABLE bar (server_date Date, dimension_1 String, metric_2 UInt32) ENGINE = MergeTree() PARTITION BY toYYYYMM(server_date) ORDER BY (server_date);
INSERT INTO foo VALUES ('2020-01-01', 'test1', 10), ('2020-01-01', 'test2', 20);
INSERT INTO bar VALUES ('2020-01-01', 'test2', 30), ('2020-01-01', 'test3', 40);
