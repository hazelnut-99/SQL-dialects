DROP TABLE IF EXISTS target;
DROP TABLE IF EXISTS source;
CREATE TABLE target (tid integer, balance integer)
  WITH (autovacuum_enabled=off);
CREATE TABLE source (sid integer, delta integer) -- no index
  WITH (autovacuum_enabled=off);
INSERT INTO target VALUES (1, 10);
INSERT INTO target VALUES (2, 20);
INSERT INTO target VALUES (3, 30);
