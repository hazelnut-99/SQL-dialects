DROP TABLE IF EXISTS strings_00469;
CREATE TABLE strings_00469(x String, y String) ENGINE = TinyLog;
INSERT INTO strings_00469 VALUES ('abcde\0', 'abcde'), ('aa\0a', 'aa\0b'), ('aa', 'aa\0'), ('a\0\0\0\0', 'a\0\0\0'), ('a\0\0', 'a\0'), ('a', 'a');
