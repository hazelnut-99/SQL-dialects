DROP TABLE IF EXISTS join;
CREATE TABLE join (k UInt8, x String) ENGINE = Memory;
INSERT INTO join VALUES (1, 'hello');
DROP TABLE join;
CREATE TABLE join (k UInt8, x String) ENGINE = Join(ANY, LEFT, k);
INSERT INTO join VALUES (1, 'hello');
