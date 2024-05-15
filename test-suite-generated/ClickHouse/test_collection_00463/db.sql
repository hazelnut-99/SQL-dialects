DROP TABLE IF EXISTS time_table;
CREATE TABLE time_table(timecol DateTime, value Int32) ENGINE = MergeTree order by tuple();
INSERT INTO time_table VALUES (now() - 5, 5), (now() - 3, 3);
