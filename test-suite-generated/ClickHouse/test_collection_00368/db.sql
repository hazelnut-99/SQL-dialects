DROP TABLE IF EXISTS empty;
DROP TABLE IF EXISTS data;
CREATE TABLE empty (value Int8) ENGINE = TinyLog;
CREATE TABLE data (value Int8) ENGINE = TinyLog;
INSERT INTO data SELECT * FROM empty;
