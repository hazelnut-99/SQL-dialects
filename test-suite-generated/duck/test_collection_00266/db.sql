create temporary table t as select range a, length(range::varchar) b, mod(range,10000) c, 5 d, 10000 e from range(100000);
explain select count(*) from t where b in (1,2,3) ;
explain select count(*) from t where b <=3 and b>=0;
with stage1 as (
  SELECT r, md5(r::varchar) as h, gen_random_uuid() as id
  FROM (SELECT UNNEST(GENERATE_SERIES(1,10,1)) r ))
, stage2 as (
  SELECT a.*, list({r:b.r, h:b.h, id: gen_random_uuid()}) as sub
  FROM stage1 as a, stage1 as b
  GROUP BY ALL)
, stage3 as (
  SELECT a.r, a.h, list({r:b.r, h:b.h, sub:b.sub, id: gen_random_uuid()}) as sub
  FROM stage1 as a, stage2 as b
  GROUP BY ALL)
SELECT count(*) as r
FROM stage3,
  (SELECT UNNEST(stage3.sub) sub) as s1(sub),
  (SELECT UNNEST(s1.sub.sub) sub) as s2(sub);
EXPLAIN SELECT * FROM (VALUES ([1, 2, 3]), ([4, 5])) t(i), (SELECT UNNEST(i)) t2(j) ORDER BY 1, 2;
EXPLAIN SELECT * FROM (VALUES (3, [1, 2, 3], 'hi'), (8, [4, 5], 'hi')) t(a, i, k), (SELECT UNNEST(i)) t2(j) ORDER BY 1, 2, 3, 4;
EXPLAIN SELECT UNNEST(j) FROM (VALUES ([[1, 2, 3]]), ([[4, 5]])) t(i), (SELECT UNNEST(i)) t2(j);
EXPLAIN with stage1 as (
  SELECT r, md5(r::VARCHAR) as h, gen_random_uuid() as id
  FROM (SELECT UNNEST(GENERATE_SERIES(1,10,1)) r ))
, stage2 as (
  SELECT a.*, list({r:b.r, h:b.h, id: gen_random_uuid()}) as sub
  FROM stage1 as a, stage1 as b
  GROUP BY ALL)
, stage3 as (
  SELECT a.r, a.h, list({r:b.r, h:b.h, sub:b.sub, id: gen_random_uuid()}) as sub
  FROM stage1 as a, stage2 as b
  GROUP BY ALL)
SELECT count(*) as r
FROM stage3,
  (SELECT UNNEST(stage3.sub) sub) as s1(sub),
  (SELECT UNNEST(s1.sub.sub) sub) as s2(sub);
EXPLAIN SELECT (SELECT UNNEST(i)) FROM (VALUES ([])) tbl(i);
EXPLAIN select * from (select [42, 43, 44]) t(a), (select unnest(t.a)) t2(b) where b=43;
CREATE TABLE with_array(foo INT, arr DOUBLE[]);
INSERT INTO with_array VALUES(1, [1,2,3]), (2, [4,5,6]);
CREATE TABLE tbl_ints AS SELECT ARRAY[1, 2, 3] AS col_a, ARRAY[6] AS col_b;
INSERT INTO tbl_ints VALUES (ARRAY[4, 5], ARRAY[7, 8]);
CREATE TABLE tbl_mix AS SELECT ARRAY[1, 2, 3] AS col_a, ARRAY['a'] AS col_b;
INSERT INTO tbl_mix VALUES (ARRAY[4, 5], ARRAY['b', 'c']);
WITH tbl AS (SELECT [{'a': 1, 'b': 'oh no!'}] AS c)
SELECT a, b, c FROM tbl, (SELECT UNNEST(c, recursive := TRUE));
WITH tbl AS (SELECT [{'a': 1, 'b': 2}] as c)
SELECT a, b, c FROM tbl, (SELECT UNNEST(c, recursive := TRUE));
CREATE TABLE test(s VARCHAR);
INSERT INTO test VALUES ('aaa');
EXPLAIN SELECT regexp_matches(s, 'aa') FROM test;
EXPLAIN SELECT contains(s, 'aa') FROM test;
EXPLAIN SELECT regexp_matches(s, 'a') FROM test;
EXPLAIN SELECT contains(s, 'a') FROM test;
DELETE FROM test;
INSERT INTO test VALUES ('aaa'), ('a.a'), ('baba'), ('abba'), ('a\.a'), ('a_a');
explain analyze select regexp_matches(s, 'a.a', 's'), s from test;
explain analyze SELECT regexp_matches(s, 'a.*a', 's'), s FROM TEST;
explain analyze SELECT regexp_matches(s, '^a.*b$', 's'), s FROM TEST;
explain analyze select regexp_matches(s, 'a_a'), s from test;
explain analyze select regexp_matches(s, 'a%a'), s from test;
explain analyze select regexp_matches(s, 'a\\a'), s from test;
explain analyze select regexp_matches(s, 'a\.a'), s from test;
explain analyze SELECT regexp_matches(s, '^a'), s FROM TEST;
explain analyze SELECT regexp_matches(s, 'a$'), s FROM TEST;
explain analyze SELECT regexp_matches(s, 'aaa.'), s FROM TEST;
explain analyze SELECT regexp_matches(s, 'aaa.', 's'), s FROM TEST;
explain analyze SELECT regexp_matches(s, '.aaa', 's'), s FROM TEST;
explain analyze SELECT regexp_matches(s, '^.aaa', 's'), s FROM TEST;
explain analyze SELECT regexp_matches(s, '.aaa$', 's'), s FROM TEST;
explain analyze select regexp_matches(s, '.*green.*', 's'), s, from test;
explain analyze select regexp_matches(s, '.*special.*requests.*', 's'), s from test;
DELETE from test;
insert into test values (concat('aaa', chr(10), 'aaa'));
EXPLAIN SELECT 1+1;
EXPLAIN SELECT 2;
EXPLAIN SELECT (1+1+1)*2;
EXPLAIN SELECT 6;
EXPLAIN SELECT CASE WHEN 1 IN (1, 2, 3, 4) THEN 3 ELSE 5 END;
EXPLAIN SELECT 3;
EXPLAIN SELECT CASE WHEN 1 IN (1+1, 2, 3, 4) THEN 3 ELSE 5 END;
EXPLAIN SELECT 5;
EXPLAIN SELECT 1 IN (1+1, 2, 3, 4, NULL);
EXPLAIN SELECT NULL;
EXPLAIN SELECT CASE WHEN 1 IN (1+1, 2, 3, 4, NULL, 1) THEN (3+4) ELSE 2+2+2 END;
EXPLAIN SELECT 7;
create table a as select 42 as i, 80 as j;
create table b as select 43 as i, 84 as k;
create table c as select 44 as i, 84 as l;
explain select i from a inner join b using (i);
explain select a.i from a, b where a.i=b.i;
explain select a.i from a natural join b;
explain select i from a left outer join b using (i);
explain select a.i from a left outer join b using (i);
explain select a.i from a left outer join b on (a.i=b.i);
explain select i from a right outer join b using (i);
explain select b.i from a right outer join b using (i);
explain select b.i from a right outer join b on (a.i=b.i);
explain select i from a left outer join b using (i) inner join c using (i);
explain select a.i from a left outer join b on (a.i=b.i) inner join c on (a.i=c.i);
explain select i from a left outer join b using (i) left outer join c using (i);
explain select a.i from a left outer join b on (a.i=b.i) left outer join c on (a.i=c.i);
explain select i from a left outer join b using (i) right join c using (i);
explain select c.i from a left outer join b on (a.i=b.i) right join c on (a.i=c.i);
explain select i from a full outer join b using (i);
explain select coalesce(b.i, a.i) from a full outer join b on (a.i=b.i);
INSERT INTO test VALUES ('FLASH'), ('TOAST'), ('BELL');
CREATE TABLE test2(X INTEGER, Y INTEGER, Z INTEGER);
EXPLAIN SELECT (X=1 AND Y=1) OR (X=1 AND Z=1) FROM test2;
EXPLAIN SELECT X=1 AND (Y=1 OR Z=1) FROM test2;
CREATE TABLE integers(i INTEGER, j INTEGER);
insert into integers values (1,1), (2,2), (3,3);
create index i_index on integers(i);
EXPLAIN SELECT i FROM integers  where i = 1;
drop index i_index;
create index i_index on integers using art((i+j));
EXPLAIN SELECT i FROM integers  where i+j = 2;
drop index i_index;
CREATE TABLE test_df_a(number BIGINT, date VARCHAR, rn BIGINT);
INSERT INTO test_df_a VALUES(7058,'2015-07-31',1);
INSERT INTO test_df_a VALUES(7058,'2015-07-31',2);
INSERT INTO test_df_a VALUES(7075,'2016-07-31',1);
INSERT INTO test_df_a VALUES(7076,'2017-07-31',1);
INSERT INTO test_df_a VALUES(7076,'2017-07-31',2);
CREATE TABLE test_df_b(number BIGINT, date VARCHAR, rn BIGINT);
;
INSERT INTO test_df_b VALUES(7058,'2015-07-31',1);
INSERT INTO test_df_b VALUES(7058,'2015-07-31',2);
INSERT INTO test_df_b VALUES(7012,'2015-07-31',1);
INSERT INTO test_df_b VALUES(7075,'2016-07-31',1);
INSERT INTO test_df_b VALUES(7076,'2017-07-31',1);
with t as (select * from test_df_a UNION select * from test_df_b) select * exclude rn from t order by all;
create table t1 as select 1 a, range b from range(100);
create table t2 as select 1 a, range b from range(100);
INSERT INTO integers VALUES (1, 10), (2, 15), (1, 30), (2, 20);
EXPLAIN SELECT FIRST(i ORDER BY i) FROM integers;
EXPLAIN SELECT FIRST(i ORDER BY i, i, i) FROM integers;
EXPLAIN SELECT FIRST(i ORDER BY i, i DESC, i DESC NULLS FIRST) FROM integers;
EXPLAIN SELECT MIN(i) FROM integers;
EXPLAIN SELECT MIN(i ORDER BY i) FROM integers;
EXPLAIN SELECT MAX(i) FROM integers;
EXPLAIN SELECT MAX(i ORDER BY i) FROM integers;
EXPLAIN SELECT MEDIAN(i) FROM integers;
EXPLAIN SELECT MEDIAN(i ORDER BY i) FROM integers;
EXPLAIN SELECT SUM(i) FROM integers;
EXPLAIN SELECT SUM(i ORDER BY i) FROM integers;
CREATE TABLE vals1 AS SELECT i AS i, i AS j FROM range(0, 11, 1) t1(i);
CREATE TABLE vals2(k BIGINT, l BIGINT);
INSERT INTO vals2 SELECT * FROM vals1;
EXPLAIN SELECT * FROM (SELECT * FROM vals1, vals2 WHERE i=5) tbl1, (SELECT * FROM vals1, vals2) tbl2 WHERE tbl1.i=tbl2.i;
EXPLAIN SELECT * FROM (SELECT * FROM vals1, vals2) tbl1, (SELECT * FROM vals1, vals2 WHERE i=5) tbl2 WHERE tbl1.i=tbl2.i;
EXPLAIN SELECT * FROM (SELECT * FROM vals1, vals2 WHERE i=5 AND k=3) tbl1, (SELECT * FROM vals1, vals2) tbl2 WHERE tbl1.i=tbl2.i AND tbl1.k=tbl2.k;
EXPLAIN SELECT * FROM (SELECT * FROM vals1, vals2) tbl1, (SELECT * FROM vals1, vals2 WHERE i=5 AND k=3) tbl2 WHERE tbl1.i=tbl2.i AND tbl1.k=tbl2.k;
EXPLAIN SELECT * FROM (SELECT * FROM vals1 WHERE i=5) tbl1 LEFT JOIN (SELECT * FROM vals1) AS tbl2 ON tbl1.i=tbl2.i;
EXPLAIN SELECT * FROM (SELECT * FROM vals1) tbl1 LEFT JOIN (SELECT * FROM vals1 WHERE i=5) AS tbl2 ON tbl1.i=tbl2.i;
EXPLAIN SELECT * FROM (SELECT * FROM vals1, vals2 WHERE i=5 AND k=10) tbl1 LEFT OUTER JOIN (SELECT * FROM vals1, vals2) tbl2 ON tbl1.i=tbl2.i AND tbl1.k=tbl2.k;
EXPLAIN SELECT COUNT(*) FROM (SELECT * FROM vals1, vals2 WHERE i=5) tbl1, (SELECT * FROM vals1, vals2) tbl2 WHERE tbl1.i=tbl1.k AND tbl1.i=tbl2.k AND tbl1.i=tbl2.i;
EXPLAIN SELECT COUNT(*) FROM (SELECT * FROM vals1, vals2) tbl1, (SELECT * FROM vals1, vals2 WHERE i=5) tbl2 WHERE tbl1.i=tbl1.k AND tbl1.i=tbl2.k AND tbl1.i=tbl2.i;
EXPLAIN SELECT * FROM (SELECT * FROM vals1, vals2 WHERE i=3 AND k=5 INTERSECT SELECT * FROM vals1, vals2) tbl1;
EXPLAIN SELECT * FROM (SELECT * FROM vals1, vals2 INTERSECT SELECT * FROM vals1, vals2 WHERE i=3 AND k=5) tbl1;
INSERT INTO test VALUES ('BIGSmall'), ('bIGSmall'), ('BIGsmall'), ('bigsmall');
;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col0=5 AND col1 >= col0;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col0>5 AND col1 >= col0;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col0>=5 AND col1 >= col0;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col0=5 AND col1 > col0;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col0>5 AND col1 > col0;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col0>=5 AND col1 > col0;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col0=5 AND col1 <= col0;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col0<5 AND col1 <= col0;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col0<=5 AND col1 <= col0;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col0=5 AND col1 < col0;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col0<5 AND col1 < col0;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col0<=5 AND col1 < col0;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col1 >= col0 AND col0=5;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col1 >= col0 AND col0>5;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col1 >= col0 AND col0>=5;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col1 > col0 AND col0=5;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col1 > col0 AND col0>5;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col1 > col0 AND col0>=5;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col1 <= col0 AND col0=5;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col1 <= col0 AND col0<5;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col1 <= col0 AND col0<=5;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col1 < col0 AND col0=5;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col1 < col0 AND col0<5;
EXPLAIN SELECT * FROM (VALUES(5,5)) tbl(col0, col1) WHERE col1 < col0 AND col0<=5;
EXPLAIN SELECT PREFIX(S, '') FROM test;
EXPLAIN SELECT CONTAINS(S, '') FROM test;
EXPLAIN SELECT NULL FROM test;
CREATE TABLE timeseries(year INTEGER, val INTEGER);
INSERT INTO timeseries VALUES (1996, 10), (1997, 12), (1996, 20), (2001, 30), (NULL, 1), (1996, NULL);
EXPLAIN SELECT year, SUM(val), COUNT(val), COUNT(*) FROM timeseries GROUP BY year ORDER BY year;
EXPLAIN SELECT year, SUM(val), COUNT(val), COUNT(*) FROM timeseries GROUP BY year ORDER BY year;
EXPLAIN SELECT year, SUM(val), COUNT(val), COUNT(*) FROM timeseries GROUP BY year ORDER BY year;
create table manycolumns as select i a, i b, i c, i d, i e, i f, i g, i h, i, i j from range(0,2) tbl(i);
explain select a, b, c, d, e, f, g, h, i, j FROM manycolumns GROUP BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10;
create table t0 as (select 42 a);
explain select * from (select 42 where 1=0) tmp0(a) ANTI JOIN (select 42) tmp1(b) on (a=b);
explain select * from ((select 43) tbl(i) SEMI JOIN (select 42) tbl2(u) on (i=u)) tbl(i) where i=42;
explain select * from ((select 42) tbl(i) ANTI JOIN (select 42) tbl2(u) on (i=u)) tbl(i) where i=42;
explain select * from ((select 42) tbl(i) ANTI JOIN (select 43) tbl2(u) on (i=u)) tbl(i) where i=42;
explain select * from ((select 43) tbl(i) ANTI JOIN (select 42) tbl2(u) on (i=u)) tbl(i) where i=42;
create table t3 as select range a, range+8 b from range(11);
create table t4 as select range a, range+8 b from range(11);
create table t5 as select range a, range+8 b from range(11);
explain select a from (select * from t2 semi join (select * from t3 where 1 = 0) tt0 on (t2.a = tt0.b)) tmp1 ANTI JOIN (select * from t3 semi join (select * from t4) tt1 on (t3.a = tt1.b)) tmp2 on (tmp1.a=tmp2.a);
create table left_table as (select * from VALUES (1, 9), (1, 10) t(a, b));
create table right_table as (select * from VALUES (1, 4) t(a, b));
explain select 42 intersect select 42;
explain select 42 intersect select 42 where 1=0;
explain select 42 where 1=0 intersect select 42;
explain select 42 where 1=0 except select 42;
explain select 42 except all select 42 where 1=0;
explain select * from (select 42 intersect select 42) tbl(i) where i=42;
explain select * from (select 42 intersect all select 43) tbl(i) where i=42;
explain select * from (select 43 intersect all select 42) tbl(i) where i=42;
explain select * from (select 42 except select 42) tbl(i) where i=42;
explain select * from (select 42 except all select 43) tbl(i) where i=42;
explain select * from (select 43 except all select 42) tbl(i) where i=42;
