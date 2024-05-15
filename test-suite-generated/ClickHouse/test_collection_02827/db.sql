DROP TABLE IF EXISTS tab;
CREATE TABLE tab(id UInt64, vec Array(Float32)) ENGINE = MergeTree ORDER BY id;
INSERT INTO tab VALUES (0, [0.0, 1.0, 2.0, 3.0, 0.0, 1.0, 2.0, 3.0, 0.0, 1.0, 2.0, 3.0, 0.0, 1.0, 2.0, 3.0, 0.0, 1.0, 2.0]) (1, [5.0, 1.0, 2.0, 3.0, 5.0, 1.0, 2.0, 3.0, 5.0, 1.0, 2.0, 3.0, 5.0, 1.0, 2.0, 3.0, 5.0, 1.0, 2.0]);
