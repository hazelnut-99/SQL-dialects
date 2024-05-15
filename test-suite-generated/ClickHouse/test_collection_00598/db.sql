DROP TABLE IF EXISTS visits;
CREATE TABLE visits (str String) ENGINE = MergeTree ORDER BY (str);
