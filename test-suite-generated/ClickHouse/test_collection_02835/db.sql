DROP TABLE IF EXISTS tab;
CREATE TABLE tab (line String, patterns Array(String)) ENGINE = MergeTree ORDER BY line;
INSERT INTO tab VALUES ('abcdef', ['c']), ('ghijkl', ['h', 'k']), ('mnopqr', ['n']);
DROP TABLE tab;
CREATE TABLE tab (line String) ENGINE = Memory();
INSERT INTO tab VALUES ('xxx..yyy..'), ('..........'), ('..xx..yyy.'), ('..........'), ('xxx.......');
