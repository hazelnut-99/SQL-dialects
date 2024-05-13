DROP TABLE IF EXISTS lc_table;
CREATE TABLE lc_table
(
    col LowCardinality(String)
) ENGINE=TinyLog;
INSERT INTO lc_table VALUES('x');
