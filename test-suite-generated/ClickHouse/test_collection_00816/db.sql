DROP TABLE IF EXISTS tab;
CREATE TABLE tab(e8 Enum8('hello' = -5, 'world' = 15), e16 Enum16('shark' = -999, 'eagle' = 9999)) ENGINE MergeTree ORDER BY tuple();
INSERT INTO TABLE tab VALUES ('hello', 'shark'), ('world', 'eagle');
DROP TABLE tab;
DROP TABLE IF EXISTS tab;
CREATE TABLE tab (s String, l Int8, r Int8) ENGINE = Memory;
INSERT INTO tab VALUES ('abcdefgh', 2, -2), ('12345678', 3, -3);
