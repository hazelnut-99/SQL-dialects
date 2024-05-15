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
