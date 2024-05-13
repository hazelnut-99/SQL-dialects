create table a(i integer);
insert into a values (42);
with cte1 as (Select i as j from a) select * from cte1;
with cte1 as (Select i as j from a) select x from cte1 t1(x);
with cte1(xxx) as (Select i as j from a) select xxx from cte1;
with cte1(xxx) as (Select i as j from a) select x from cte1 t1(x);
with cte1 as (Select i as j from a), cte2 as (select ref.j as k from cte1 as ref), cte3 as (select ref2.j+1 as i from cte1 as ref2) select * from cte2 , cte3;
with cte1 as (select i as j from a), cte2 as (select ref.j as k from cte1 as ref), cte3 as (select ref2.j+1 as i from cte1 as ref2) select * from cte2 union all select * FROM cte3;
with cte3 as (select ref2.j as i from cte1 as ref2), cte1 as (Select i as j from a), cte2 as (select ref.j+1 as k from cte1 as ref) select * from cte2 union all select * FROM cte3;
with cte1 as (Select i as j from a) select * from cte1 cte11, cte1 cte12;
with cte1 as (Select i as j from a) select * from cte1 where j = (select max(j) from cte1 as cte2);
with cte1(x, y) as (select 42 a, 84 b) select zzz, y from cte1 t1(zzz);
create view va AS (with cte as (Select i as j from a) select * from cte);
with cte AS (SELECT * FROM va) SELECT * FROM cte;
create view vb AS (with cte1 as (Select i as j from a), cte2 as (select ref.j+1 as k from cte1 as ref) select * from cte2);
WITH RECURSIVE cte(d) AS (
		SELECT 1
	UNION ALL
		(WITH c(d) AS (SELECT * FROM cte)
			SELECT d + 1
			FROM c
			WHERE FALSE
		)
)
SELECT max(d) FROM cte;
with cte (a) as (
    select 1
)
select
    a as alias1,
    alias1 as alias2
from cte
where alias2 > 0;
insert into a values (1729);
with a as (select * from va) select * from a;
CREATE TABLE table1 (id INTEGER, a INTEGER);
CREATE TABLE table2 (table1_id INTEGER);
DESCRIBE select 42 AS a;
with cte as (select 42 AS a) FROM (DESCRIBE TABLE cte);
with cte as (select 42 AS a) FROM (DESCRIBE TABLE cte);
SUMMARIZE select 42 AS a;
with cte as (select 42 AS a) FROM (SUMMARIZE TABLE cte);
with cte as (select 42 AS a) FROM (SUMMARIZE TABLE cte);
WITH RECURSIVE
input(sud) AS (
VALUES('53..7....6..195....98....6.8...6...34..8.3..17...2...6.6....28....419..5....8..79')
),
digits(z, lp) AS (
SELECT CAST(lp+1 AS TEXT), lp::int+1 FROM generate_series(0,8,1) t(lp)
),
x(s, ind) AS (
SELECT sud, instr(sud, '.') FROM input
UNION ALL
SELECT
substr(s, 1, ind::int-1) || z || substr(s, ind::int+1),
instr(substr(s, 1, ind::int-1) || z || substr(s, ind::int+1), '.' )
FROM x, digits AS z
WHERE ind::int>0
AND NOT EXISTS (
SELECT 1
FROM digits AS lp
WHERE z.z = substr(s, ((ind::int-1)//9)*9 + lp, 1)
OR z.z = substr(s, ((ind::int-1)%9) + (lp-1)*9 + 1, 1)
OR z.z = substr(s, (((ind::int-1)//3) % 3) * 3
+ ((ind::int-1)//27) * 27 + lp
+ ((lp-1) // 3) * 6, 1)
)
)
SELECT s FROM x WHERE ind::int=0;
WITH RECURSIVE t(x) AS
(
  SELECT 1
    UNION ALL
  SELECT x+1
  FROM   t
  WHERE  x < 4
),
u(x) AS
(
  SELECT *
  FROM   t
    UNION ALL
  SELECT u.x * 2 + t.x
  FROM   u, t
  WHERE  u.x < 32
)
SELECT *
FROM   u
ORDER BY x
LIMIT 5;
WITH RECURSIVE collatz(x, t, steps) AS
(
  SELECT x, x, 0
  FROM   (WITH RECURSIVE n(t) AS (SELECT 1 UNION ALL SELECT t+1 FROM n WHERE t < 10) SELECT * FROM n) AS _(x)
    UNION ALL
  (SELECT x, CASE WHEN t%2 = 1 THEN t * 3 + p ELSE t / 2 END, steps + p
   FROM   collatz, (WITH RECURSIVE n(t) AS (SELECT 1 UNION ALL SELECT t+1 FROM n WHERE t < 1) SELECT * FROM n) AS _(p)
   WHERE  t <> 1)
)
SELECT * FROM collatz WHERE t = 1
ORDER BY x;
CREATE TABLE p(loc int8);
INSERT INTO p VALUES (1);
WITH RECURSIVE t(y, arr) AS
(
  SELECT 1, array[1,2,3,4,5,6]
    UNION ALL
  SELECT y+1, arr[:loc]
  FROM   t, p
  WHERE y < 10
) SELECT * FROM t;
WITH RECURSIVE t(y, arr) AS
(
  SELECT 1, array[1,2,3,4,5,6]
    UNION ALL
  SELECT y+1, arr
  FROM   t, p
  WHERE y < 10
    AND y = loc
) SELECT * FROM t;
WITH RECURSIVE t(y, arr) AS
(
  SELECT 1, array[1,2,3,4,5,6]
    UNION ALL
  SELECT y+1, arr[:loc]
  FROM   t, p
  WHERE y < 10
    AND y = loc
) SELECT * FROM t;
WITH RECURSIVE t(arr) AS
(
  SELECT array[1,2,3,4,5,6]
    UNION ALL
  SELECT  arr[arr[1]+1:6]
  FROM   t
  WHERE arr[1] < 6
) SELECT * FROM t;
with recursive t as (select 1 as x union select x+1 from t where x < 3) select * from t order by x;
with recursive t(x) as (select 1 union select x+1 from t where x < 3) select * from t order by x;
with recursive t(x) as (select 1 union select x+1 from t where x < 3) select zz from t t1(zz) order by zz;
with recursive t(x) as (select 1 union select zzz+1 from t t1(zzz) where zzz < 3) select zz from t t1(zz) order by zz;
with recursive t as (select 1 as x union select x from t) select * from t;
with recursive t as (select 1 as x union select x+1 from t as m where m.x < 3) select * from t order by x;
with recursive t as (select 1 as x union select m.x+f.x from t as m, t as f where m.x < 3) select * from t order by x;
with recursive t as (select 1 as x, 'hello' as y union select x+1, y || '-' || 'hello' from t where x < 3) select * from t order by x;
with recursive t as (select 1 as x union select x+1 from t where x < 3) select min(a1.x) from t a1, t a2;
with recursive t as (select 1 as x union select x+(SELECT 1) from t where x < 3) select * from t order by x;
with recursive t as (select 1 as x union all select * from (select x from t where x < 5) tbl(i) join (select 1) tbl2(i) using (i)) select * from t limit 3;
with recursive t as (select 1 as x union all select * from (select 1) tbl2(i) join (select x from t where x < 5) tbl(i) using (i)) select * from t limit 3;
with recursive t as (select 1 as x union all select * from (select x from t where x < 5) tbl(i) join (select first(i) from (values (1)) tbl3(i) limit 1) tbl2(i) using (i)) select * from t limit 3;
with recursive t as (select 1 as x union all select * from (select first(i) from (values (1)) tbl3(i) limit 1) tbl2(i) join (select x from t where x < 5) tbl(i) using (i)) select * from t limit 3;
with recursive t as (select 1 as x union select x+(SELECT 1+t.x) from t where x < 5) select * from t order by x;
create table integers as with recursive t as (select 1 as x union select x+1 from t where x < 3) select * from t;
with recursive t as (select (select min(x) from integers) as x union select x+1 from t where x < 3) select * from t order by x;
with recursive t as (select 1 as x union select sum(x+1) from t where x < 3) select * from t order by 1 nulls last;
create view vr as (with recursive t(x) as (select 1 union select x+1 from t where x < 3) select * from t order by x);
