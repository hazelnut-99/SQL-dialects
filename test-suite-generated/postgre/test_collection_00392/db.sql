ROLLBACK;
CREATE SCHEMA testschema;
PREPARE selectsource(int) AS SELECT $1;
CREATE TABLE testschema.part (a int) PARTITION BY LIST (a);
CREATE TABLE testschema.part1 PARTITION OF testschema.part FOR VALUES IN (1);
CREATE TABLE testschema.part2 PARTITION OF testschema.part FOR VALUES IN (2);
CREATE TABLE testschema.dflt2 (a int PRIMARY KEY) PARTITION BY LIST (a);
CREATE TABLE testschema.test_tab(a int, b int, c int);
ALTER TABLE testschema.test_tab ADD CONSTRAINT test_tab_unique UNIQUE (a);
CREATE INDEX test_tab_a_idx ON testschema.test_tab (a);
CREATE INDEX test_tab_b_idx ON testschema.test_tab (b);
CREATE TABLE testschema.atable AS VALUES (1), (2);
CREATE UNIQUE INDEX anindex ON testschema.atable(column1);
INSERT INTO testschema.atable VALUES(3);	-- ok
