USE system;
DROP TABLE IF EXISTS nested;
CREATE TABLE nested (nest Nested(a UInt8, b String)) ENGINE = Memory;
INSERT INTO nested VALUES ([1, 2], ['hello', 'world']);
DROP TABLE nested;
