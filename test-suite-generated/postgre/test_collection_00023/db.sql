CREATE TABLE clstr_tst_s (rf_a SERIAL PRIMARY KEY,
	b INT);
CREATE TABLE clstr_tst (a SERIAL PRIMARY KEY,
	b INT,
	c TEXT,
	d TEXT,
	CONSTRAINT clstr_tst_con FOREIGN KEY (b) REFERENCES clstr_tst_s);
CREATE INDEX clstr_tst_b ON clstr_tst (b);
CREATE INDEX clstr_tst_c ON clstr_tst (c);
CREATE INDEX clstr_tst_c_b ON clstr_tst (c,b);
CREATE INDEX clstr_tst_b_c ON clstr_tst (b,c);
INSERT INTO clstr_tst_s (b) VALUES (0);
INSERT INTO clstr_tst_s (b) SELECT b FROM clstr_tst_s;
INSERT INTO clstr_tst_s (b) SELECT b FROM clstr_tst_s;
INSERT INTO clstr_tst_s (b) SELECT b FROM clstr_tst_s;
INSERT INTO clstr_tst_s (b) SELECT b FROM clstr_tst_s;
INSERT INTO clstr_tst_s (b) SELECT b FROM clstr_tst_s;
CREATE TABLE clstr_tst_inh () INHERITS (clstr_tst);
INSERT INTO clstr_tst (b, c) VALUES (11, 'once');
INSERT INTO clstr_tst (b, c) VALUES (10, 'diez');
INSERT INTO clstr_tst (b, c) VALUES (31, 'treinta y uno');
INSERT INTO clstr_tst (b, c) VALUES (22, 'veintidos');
INSERT INTO clstr_tst (b, c) VALUES (3, 'tres');
INSERT INTO clstr_tst (b, c) VALUES (20, 'veinte');
INSERT INTO clstr_tst (b, c) VALUES (23, 'veintitres');
INSERT INTO clstr_tst (b, c) VALUES (21, 'veintiuno');
INSERT INTO clstr_tst (b, c) VALUES (4, 'cuatro');
INSERT INTO clstr_tst (b, c) VALUES (14, 'catorce');
INSERT INTO clstr_tst (b, c) VALUES (2, 'dos');
INSERT INTO clstr_tst (b, c) VALUES (18, 'dieciocho');
INSERT INTO clstr_tst (b, c) VALUES (27, 'veintisiete');
INSERT INTO clstr_tst (b, c) VALUES (25, 'veinticinco');
INSERT INTO clstr_tst (b, c) VALUES (13, 'trece');
INSERT INTO clstr_tst (b, c) VALUES (28, 'veintiocho');
INSERT INTO clstr_tst (b, c) VALUES (32, 'treinta y dos');
INSERT INTO clstr_tst (b, c) VALUES (5, 'cinco');
INSERT INTO clstr_tst (b, c) VALUES (29, 'veintinueve');
INSERT INTO clstr_tst (b, c) VALUES (1, 'uno');
INSERT INTO clstr_tst (b, c) VALUES (24, 'veinticuatro');
INSERT INTO clstr_tst (b, c) VALUES (30, 'treinta');
INSERT INTO clstr_tst (b, c) VALUES (12, 'doce');
INSERT INTO clstr_tst (b, c) VALUES (17, 'diecisiete');
INSERT INTO clstr_tst (b, c) VALUES (9, 'nueve');
INSERT INTO clstr_tst (b, c) VALUES (19, 'diecinueve');
INSERT INTO clstr_tst (b, c) VALUES (26, 'veintiseis');
INSERT INTO clstr_tst (b, c) VALUES (15, 'quince');
INSERT INTO clstr_tst (b, c) VALUES (7, 'siete');
INSERT INTO clstr_tst (b, c) VALUES (16, 'dieciseis');
INSERT INTO clstr_tst (b, c) VALUES (8, 'ocho');
INSERT INTO clstr_tst (b, c, d) VALUES (6, 'seis', repeat('xyzzy', 100000));
CLUSTER clstr_tst_c ON clstr_tst;
INSERT INTO clstr_tst_inh VALUES (0, 100, 'in child table');
COMMIT;
create temp table clstr_temp (col1 int primary key, col2 text);
insert into clstr_temp values (2, 'two'), (1, 'one');
cluster clstr_temp using clstr_temp_pkey;
drop table clstr_temp;
CREATE TABLE clustertest (f1 int PRIMARY KEY);
CLUSTER clustertest USING clustertest_pkey;
CLUSTER clustertest;
CREATE TABLE clstrpart (a int) PARTITION BY RANGE (a);
CREATE TABLE clstrpart1 PARTITION OF clstrpart FOR VALUES FROM (1) TO (10) PARTITION BY RANGE (a);
CREATE TABLE clstrpart11 PARTITION OF clstrpart1 FOR VALUES FROM (1) TO (5);
CREATE TABLE clstrpart12 PARTITION OF clstrpart1 FOR VALUES FROM (5) TO (10) PARTITION BY RANGE (a);
CREATE TABLE clstrpart2 PARTITION OF clstrpart FOR VALUES FROM (10) TO (20);
CREATE TABLE clstrpart3 PARTITION OF clstrpart DEFAULT PARTITION BY RANGE (a);
CREATE TABLE clstrpart33 PARTITION OF clstrpart3 DEFAULT;
CREATE INDEX clstrpart_only_idx ON ONLY clstrpart (a);
DROP INDEX clstrpart_only_idx;
CREATE INDEX clstrpart_idx ON clstrpart (a);
DROP TABLE clstrpart;
CREATE TABLE ptnowner(i int unique) PARTITION BY LIST (i);
CREATE INDEX ptnowner_i_idx ON ptnowner(i);
CREATE TABLE ptnowner1 PARTITION OF ptnowner FOR VALUES IN (1);
CREATE TABLE ptnowner2 PARTITION OF ptnowner FOR VALUES IN (2);
DROP TABLE ptnowner;
CREATE TABLE clstr_expression(id serial primary key, a int, b text COLLATE "C");
INSERT INTO clstr_expression(a, b) SELECT g.i % 42, 'prefix'||g.i FROM generate_series(1, 133) g(i);
CREATE INDEX clstr_expression_minus_a ON clstr_expression ((-a), b);
CREATE INDEX clstr_expression_upper_b ON clstr_expression ((upper(b)));
BEGIN;
