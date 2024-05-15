DROP TABLE IF EXISTS nested;
CREATE TABLE nested (nest Nested(x UInt8, y UInt8)) ENGINE = Memory;
INSERT INTO nested VALUES ([1, 2, 3], [4, 5, 6]);
