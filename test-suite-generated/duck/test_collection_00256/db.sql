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
