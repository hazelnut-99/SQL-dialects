DROP TABLE IF EXISTS mergetree_00712;
CREATE TABLE mergetree_00712 (x UInt8, s String) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO mergetree_00712 VALUES (1, 'Hello, world!');
