DROP TABLE IF EXISTS null_before SYNC;
CREATE TABLE null_before (id INT NULL) ENGINE=MergeTree() ORDER BY tuple();
DROP TABLE IF EXISTS null_before SYNC;
CREATE TABLE null_before (id INT NOT NULL) ENGINE=MergeTree() ORDER BY tuple();
