DROP TABLE IF EXISTS cube;
CREATE TABLE cube(a String, b Int32, s Int32) ENGINE = Memory;
INSERT INTO cube VALUES ('a', 1, 10), ('a', 1, 15), ('a', 2, 20);
INSERT INTO cube VALUES ('a', 2, 25), ('b', 1, 10), ('b', 1, 5);
INSERT INTO cube VALUES ('b', 2, 20), ('b', 2, 15);
