DROP TABLE IF EXISTS tab;
CREATE TABLE tab (id Int32, vec Array(Float32)) ENGINE=MergeTree ORDER BY id;
