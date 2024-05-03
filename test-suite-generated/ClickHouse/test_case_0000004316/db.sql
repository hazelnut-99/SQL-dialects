DROP TABLE IF EXISTS multidimensional;
CREATE TABLE multidimensional (x UInt64, arr Array(Array(String))) ENGINE = MergeTree ORDER BY x;
INSERT INTO multidimensional VALUES (1, [['Hello', 'World'], ['Goodbye'], []]);
