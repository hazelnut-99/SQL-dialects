DROP TABLE IF EXISTS t;
DROP TABLE IF EXISTS nt;
CREATE TABLE t (x String) ENGINE = Log();
CREATE TABLE nt (x Nullable(String)) ENGINE = Log();
INSERT INTO t (x) VALUES ('id'), ('1');
INSERT INTO nt (x) VALUES ('id'), (NULL), ('1');
INSERT INTO nt (x) SELECT NULL as x FROM numbers(1000);
