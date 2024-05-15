DROP TABLE IF EXISTS tab;
CREATE TABLE tab (line String, patterns Array(String)) ENGINE = MergeTree ORDER BY line;
INSERT INTO tab VALUES ('abcdef', ['c']), ('ghijkl', ['h', 'k']), ('mnopqr', ['n']);
