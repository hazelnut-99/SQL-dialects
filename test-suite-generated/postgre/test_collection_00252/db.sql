DROP SCHEMA IF EXISTS regress_rls_schema CASCADE;
COMMIT;
BEGIN;
CREATE TABLE coll_t (c) AS VALUES ('bar'::text);
CREATE POLICY coll_p ON coll_t USING (c < ('foo'::text COLLATE "C"));
ALTER TABLE coll_t ENABLE ROW LEVEL SECURITY;
ROLLBACK;
BEGIN;
CREATE TABLE tbl1 (c) AS VALUES ('bar'::text);
ROLLBACK; -- cleanup
BEGIN;
CREATE TABLE t (c) AS VALUES ('bar'::text);
ROLLBACK;
CREATE TABLE r1 (a int);
CREATE TABLE r2 (a int);
INSERT INTO r1 VALUES (10), (20);
INSERT INTO r2 VALUES (10), (20);
CREATE POLICY p1 ON r1 USING (true);
ALTER TABLE r1 ENABLE ROW LEVEL SECURITY;
CREATE POLICY p1 ON r2 FOR SELECT USING (true);
CREATE POLICY p2 ON r2 FOR INSERT WITH CHECK (false);
CREATE POLICY p3 ON r2 FOR UPDATE USING (false);
CREATE POLICY p4 ON r2 FOR DELETE USING (false);
ALTER TABLE r2 ENABLE ROW LEVEL SECURITY;
