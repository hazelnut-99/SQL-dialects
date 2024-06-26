CREATE TABLE truncate_a (col1 integer primary key);
INSERT INTO truncate_a VALUES (1);
INSERT INTO truncate_a VALUES (2);
BEGIN;
TRUNCATE truncate_a;
ROLLBACK;
BEGIN;
COMMIT;
CREATE TABLE trunc_c (a serial PRIMARY KEY);
CREATE TABLE trunc_d (a int REFERENCES trunc_c);
TRUNCATE TABLE trunc_c,trunc_d;		-- fail
INSERT INTO trunc_c VALUES (1);
INSERT INTO trunc_d VALUES (1);
INSERT INTO trunc_d VALUES (1);
TRUNCATE TABLE trunc_c CASCADE;  -- ok
CREATE TABLE trunc_f (col1 integer primary key);
INSERT INTO trunc_f VALUES (1);
INSERT INTO trunc_f VALUES (2);
CREATE TABLE trunc_fa (col2a text) INHERITS (trunc_f);
INSERT INTO trunc_fa VALUES (3, 'three');
CREATE TABLE trunc_fb (col2b int) INHERITS (trunc_f);
INSERT INTO trunc_fb VALUES (4, 444);
CREATE TABLE trunc_faa (col3 text) INHERITS (trunc_fa);
INSERT INTO trunc_faa VALUES (5, 'five', 'FIVE');
BEGIN;
TRUNCATE trunc_f;
