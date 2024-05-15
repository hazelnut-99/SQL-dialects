COMMIT;
CREATE TABLE remember_node_subid (c int);
BEGIN;
ALTER TABLE remember_node_subid ALTER c TYPE bigint;
SAVEPOINT q;
DROP TABLE remember_node_subid;
ROLLBACK TO q;
COMMIT;
DROP TABLE remember_node_subid;
CREATE FUNCTION const_func () RETURNS int AS $$ SELECT 1; $$ LANGUAGE SQL IMMUTABLE;
DROP FUNCTION const_func();
CREATE FUNCTION immut_func (a int) RETURNS int AS $$ SELECT a + random()::int; $$ LANGUAGE SQL;
DROP FUNCTION immut_func(int);
CREATE FUNCTION plusone(a int) RETURNS INT AS $$ SELECT a+1; $$ LANGUAGE SQL;
CREATE TABLE partitioned (
	a int,
	b int,
	c text,
	d text
) PARTITION BY RANGE (a oid_ops, plusone(b), c collate "default", d collate "C");
CREATE TABLE partitioned2 (
	a int,
	b text
) PARTITION BY RANGE ((a+1), substr(b, 1, 5));
CREATE TABLE part2_1 PARTITION OF partitioned2 FOR VALUES FROM (-1, 'aaaaa') TO (100, 'ccccc');
drop table partitioned;
create table partitioned (a int, b int)
  partition by list ((partitioned));
create table partitioned1
  partition of partitioned for values in ('(1,2)');
create domain intdom1 as int;
alter table partitioned drop column a;  -- fail
drop domain intdom1;  -- fail, requires cascade
table partitioned;  -- gone
create domain intdom1 as int;
drop domain intdom1;  -- fail, requires cascade
table partitioned;  -- gone
CREATE TABLE list_parted (
	a int
) PARTITION BY LIST (a);
CREATE TABLE part_p1 PARTITION OF list_parted FOR VALUES IN ('1');
CREATE TABLE part_p2 PARTITION OF list_parted FOR VALUES IN (2);
CREATE TABLE part_p3 PARTITION OF list_parted FOR VALUES IN ((2+1));
CREATE TABLE part_null PARTITION OF list_parted FOR VALUES IN (null);
CREATE TABLE part_default PARTITION OF list_parted DEFAULT;
CREATE TABLE bools (
	a bool
) PARTITION BY LIST (a);
DROP TABLE bools;
CREATE TABLE moneyp (
	a money
) PARTITION BY LIST (a);
CREATE TABLE moneyp_10 PARTITION OF moneyp FOR VALUES IN (10);
CREATE TABLE moneyp_11 PARTITION OF moneyp FOR VALUES IN ('11');
CREATE TABLE moneyp_12 PARTITION OF moneyp FOR VALUES IN (to_char(12, '99')::int);
DROP TABLE moneyp;
CREATE TABLE bigintp (
	a bigint
) PARTITION BY LIST (a);
CREATE TABLE bigintp_10 PARTITION OF bigintp FOR VALUES IN (10);
DROP TABLE bigintp;
CREATE TABLE range_parted (
	a date
) PARTITION BY RANGE (a);
CREATE TABLE hash_parted (
	a int
) PARTITION BY HASH (a);
CREATE TABLE hpart_1 PARTITION OF hash_parted FOR VALUES WITH (MODULUS 10, REMAINDER 0);
CREATE TABLE hpart_2 PARTITION OF hash_parted FOR VALUES WITH (MODULUS 50, REMAINDER 1);
CREATE TABLE hpart_3 PARTITION OF hash_parted FOR VALUES WITH (MODULUS 200, REMAINDER 2);
CREATE TABLE hpart_4 PARTITION OF hash_parted FOR VALUES WITH (MODULUS 10, REMAINDER 3);
CREATE TABLE unparted (
	a int
);
DROP TABLE unparted;
CREATE TEMP TABLE temp_parted (
	a int
) PARTITION BY LIST (a);
DROP TABLE temp_parted;
CREATE TABLE list_parted2 (
	a varchar
) PARTITION BY LIST (a);
CREATE TABLE part_null_z PARTITION OF list_parted2 FOR VALUES IN (null, 'z');
CREATE TABLE part_ab PARTITION OF list_parted2 FOR VALUES IN ('a', 'b');
CREATE TABLE list_parted2_def PARTITION OF list_parted2 DEFAULT;
INSERT INTO list_parted2 VALUES('X');
CREATE TABLE range_parted2 (
	a int
) PARTITION BY RANGE (a);
CREATE TABLE part0 PARTITION OF range_parted2 FOR VALUES FROM (minvalue) TO (1);
CREATE TABLE part1 PARTITION OF range_parted2 FOR VALUES FROM (1) TO (10);
CREATE TABLE part2 PARTITION OF range_parted2 FOR VALUES FROM (20) TO (30);
CREATE TABLE part3 PARTITION OF range_parted2 FOR VALUES FROM (30) TO (40);
CREATE TABLE range2_default PARTITION OF range_parted2 DEFAULT;
INSERT INTO range_parted2 VALUES (85);
CREATE TABLE part4 PARTITION OF range_parted2 FOR VALUES FROM (90) TO (100);
CREATE TABLE range_parted3 (
	a int,
	b int
) PARTITION BY RANGE (a, (b+1));
CREATE TABLE part00 PARTITION OF range_parted3 FOR VALUES FROM (0, minvalue) TO (0, maxvalue);
CREATE TABLE part10 PARTITION OF range_parted3 FOR VALUES FROM (1, minvalue) TO (1, 1);
CREATE TABLE part11 PARTITION OF range_parted3 FOR VALUES FROM (1, 1) TO (1, 10);
CREATE TABLE part12 PARTITION OF range_parted3 FOR VALUES FROM (1, 10) TO (1, maxvalue);
CREATE TABLE range3_default PARTITION OF range_parted3 DEFAULT;
CREATE TABLE hash_parted2 (
	a varchar
) PARTITION BY HASH (a);
CREATE TABLE h2part_1 PARTITION OF hash_parted2 FOR VALUES WITH (MODULUS 4, REMAINDER 2);
CREATE TABLE h2part_2 PARTITION OF hash_parted2 FOR VALUES WITH (MODULUS 8, REMAINDER 0);
CREATE TABLE h2part_3 PARTITION OF hash_parted2 FOR VALUES WITH (MODULUS 8, REMAINDER 4);
CREATE TABLE h2part_4 PARTITION OF hash_parted2 FOR VALUES WITH (MODULUS 8, REMAINDER 5);
CREATE TABLE parted (
	a text,
	b int NOT NULL DEFAULT 0,
	CONSTRAINT check_a CHECK (length(a) > 0)
) PARTITION BY LIST (a);
CREATE TABLE part_a PARTITION OF parted FOR VALUES IN ('a');
CREATE TABLE part_b PARTITION OF parted (
	b NOT NULL DEFAULT 1,
	CONSTRAINT check_a CHECK (length(a) > 0),
	CONSTRAINT check_b CHECK (b >= 0)
) FOR VALUES IN ('b');
ALTER TABLE parted ADD CONSTRAINT check_b CHECK (b >= 0);
ALTER TABLE parted DROP CONSTRAINT check_a, DROP CONSTRAINT check_b;
CREATE TABLE part_c PARTITION OF parted (b WITH OPTIONS NOT NULL DEFAULT 0) FOR VALUES IN ('c') PARTITION BY RANGE ((b));
CREATE TABLE part_c_1_10 PARTITION OF part_c FOR VALUES FROM (1) TO (10);
create table parted_notnull_inh_test (a int default 1, b int not null default 0) partition by list (a);
create table parted_notnull_inh_test1 partition of parted_notnull_inh_test (a not null, b default 1) for values in (1);
create table parted_boolean_col (a bool, b text) partition by list(a);
create table parted_boolean_less partition of parted_boolean_col
  for values in ('foo' < 'bar');
create table parted_boolean_greater partition of parted_boolean_col
  for values in ('foo' > 'bar');
drop table parted_boolean_col;
create table parted_collate_must_match (a text collate "C", b text collate "C")
  partition by range (a);
create table parted_collate_must_match1 partition of parted_collate_must_match
  (a collate "POSIX") for values from ('a') to ('m');
create table parted_collate_must_match2 partition of parted_collate_must_match
  (b collate "POSIX") for values from ('m') to ('z');
drop table parted_collate_must_match;
create table test_part_coll_posix (a text) partition by range (a collate "POSIX");
create table test_part_coll2 partition of test_part_coll_posix for values from ('g') to ('m');
create table test_part_coll_cast2 partition of test_part_coll_posix for values from (name 's') to ('z');
drop table test_part_coll_posix;
CREATE FUNCTION my_int4_sort(int4,int4) RETURNS int LANGUAGE sql
  AS $$ SELECT CASE WHEN $1 = $2 THEN 0 WHEN $1 > $2 THEN 1 ELSE -1 END; $$;
CREATE OPERATOR CLASS test_int4_ops FOR TYPE int4 USING btree AS
  OPERATOR 1 < (int4,int4), OPERATOR 2 <= (int4,int4),
  OPERATOR 3 = (int4,int4), OPERATOR 4 >= (int4,int4),
  OPERATOR 5 > (int4,int4), FUNCTION 1 my_int4_sort(int4,int4);
CREATE TABLE partkey_t (a int4) PARTITION BY RANGE (a test_int4_ops);
CREATE TABLE partkey_t_1 PARTITION OF partkey_t FOR VALUES FROM (0) TO (1000);
INSERT INTO partkey_t VALUES (100);
INSERT INTO partkey_t VALUES (200);
DROP TABLE parted, list_parted, range_parted, list_parted2, range_parted2, range_parted3;
DROP TABLE partkey_t, hash_parted, hash_parted2;
DROP OPERATOR CLASS test_int4_ops USING btree;
DROP FUNCTION my_int4_sort(int4,int4);
CREATE TABLE parted_col_comment (a int, b text) PARTITION BY LIST (a);
COMMENT ON TABLE parted_col_comment IS 'Am partitioned table';
COMMENT ON COLUMN parted_col_comment.a IS 'Partition key';
