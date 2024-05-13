DROP TABLE IF EXISTS t;
DROP TABLE IF EXISTS nt;
DROP TABLE IF EXISTS ntxy;
CREATE TABLE t (x String) ENGINE = Log();
CREATE TABLE nt (x Nullable(String)) ENGINE = Log();
CREATE TABLE ntxy (x Nullable(String), y Nullable(String)) ENGINE = Log();
INSERT INTO t (x) VALUES ('id'), ('1');
INSERT INTO nt (x) VALUES ('id'), (NULL), ('1');
INSERT INTO ntxy (x, y) VALUES ('id', 'id'), (NULL, NULL), ('1', '1');
