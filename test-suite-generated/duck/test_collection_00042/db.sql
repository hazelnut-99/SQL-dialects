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
with recursive t as (select 1 as x union all select x+1 from t where x < 3) select * from t;
with recursive t as (select 1 as x union all select x+1 from t as m where m.x < 3) select * from t;
with recursive t as (select 1 as x union all select m.x+f.x from t as m, t as f where m.x < 3) select * from t;
with recursive t as (select 1 as x, 'hello' as y union all select x+1, y || '-' || 'hello' from t where x < 3) select * from t;
with recursive t as (select 1 as x union all select x+1 from t where x < 3) select min(a1.x) from t a1, t a2;
with recursive t as (select 1 as x union all select x+(SELECT 1) from t where x < 3) select * from t;
with recursive t as (select (select min(x) from integers) as x union all select x+1 from t where x < 3) select * from t;
with recursive t as (select 1 as x union all select sum(x+1) AS x from t where x < 3 group by x) select * from t;
with recursive t as (select 1 as x union all select sum(x+1) AS x from t where x < 3)
select * from (select * from t limit 10) t1(x) order by x nulls last;
WITH RECURSIVE t AS (
	SELECT 1 AS i
	UNION ALL
	SELECT j
	FROM t, generate_series(0, 10, 1) series(j)
	WHERE j=i+1
)
SELECT * FROM t;
WITH RECURSIVE cte AS (SELECT 42) SELECT * FROM cte;
CREATE TABLE v(x INT);
INSERT INTO v
VALUES
(1),(2),(3);
WITH RECURSIVE t(x) AS
(
  SELECT 1
    UNION ALL
  SELECT x + 1
  FROM   (SELECT t.x+1 FROM v AS _(p) FULL OUTER JOIN t ON t.x = p) AS _(x)
  WHERE  x < 10
) SELECT * FROM v AS _(p) RIGHT OUTER JOIN t ON t.x = p ORDER BY p, t NULLS LAST;
CREATE TABLE tag(id int, name string, subclassof int);
INSERT INTO tag VALUES
  (7, 'Music',  9),
  (8, 'Movies', 9),
  (9, 'Art',    NULL)
;
WITH RECURSIVE tag_hierarchy(id, source, path, target) AS (
  SELECT id, name, name AS path, NULL AS target -- this should be '' for correct behaviour
  FROM tag
  WHERE subclassof IS NULL
  UNION ALL
  SELECT tag.id, tag.name, tag_hierarchy.path || ' <- ' || tag.name, tag.name AS target
  FROM tag, tag_hierarchy
  WHERE tag.subclassof = tag_hierarchy.id
)
SELECT source, path, target
FROM tag_hierarchy
;
CREATE TABLE emp (empno INTEGER PRIMARY KEY,
                  ename VARCHAR,
				  job VARCHAR,
				  mgr INTEGER,
				  hiredate DATE,
				  sal DOUBLE,
				  comm DOUBLE,
				  deptno INTEGER);
INSERT INTO emp VALUES (7839, 'KING', 'PRESIDENT', NULL, DATE '1981-11-17', 5000.00, NULL, 10);
INSERT INTO emp VALUES (7698, 'BLAKE', 'MANAGER', 7839, DATE '1981-05-01', 2850.00, NULL, 30);
INSERT INTO emp VALUES (7782, 'CLARK', 'MANAGER', 7839, DATE '1981-06-09', 2450.00, NULL, 10);
INSERT INTO emp VALUES (7566, 'JONES', 'MANAGER', 7839, DATE '1981-04-02', 2975.00, NULL, 20);
INSERT INTO emp VALUES (7902, 'FORD', 'ANALYST', 7566, DATE '1981-12-03', 3000.00, NULL, 20);
INSERT INTO emp VALUES (7369, 'SMITH', 'CLERK', 7902, DATE '1980-12-17', 800.00, NULL, 20);
INSERT INTO emp VALUES (7499, 'ALLEN', 'SALESMAN', 7698, DATE '1981-02-20', 1600.00, 300.00, 30);
INSERT INTO emp VALUES (7521, 'WARD', 'SALESMAN', 7698, DATE '1981-02-22', 1250.00, 500.00, 30);
INSERT INTO emp VALUES (7654, 'MARTIN', 'SALESMAN', 7698, DATE '1981-09-28', 1250.00, 1400.00, 30);
INSERT INTO emp VALUES (7844, 'TURNER', 'SALESMAN', 7698, DATE '1981-09-08', 1500.00, 0.00, 30);
INSERT INTO emp VALUES (7900, 'JAMES', 'CLERK', 7698, DATE '1981-12-03', 950.00, NULL, 30);
INSERT INTO emp VALUES (7934, 'MILLER', 'CLERK', 7782, DATE '1982-01-23', 1300.00, NULL, 10);
WITH RECURSIVE ctename AS (
      SELECT empno, ename
      FROM emp
      WHERE empno = 7566
   UNION ALL
      SELECT emp.empno, emp.ename
      FROM emp
         JOIN ctename ON emp.mgr = ctename.empno
)
SELECT * FROM ctename;
WITH RECURSIVE ctename AS (
      SELECT empno, ename,
             0 AS level
      FROM emp
      WHERE empno = 7566
   UNION ALL
      SELECT emp.empno, emp.ename,
             ctename.level + 1
      FROM emp
         JOIN ctename ON emp.mgr = ctename.empno
)
SELECT * FROM ctename;
WITH RECURSIVE ctename AS (
      SELECT empno, ename,
             ename AS path
      FROM emp
      WHERE empno = 7566
   UNION ALL
      SELECT emp.empno, emp.ename,
             ctename.path || ' -> ' || emp.ename
      FROM emp
         JOIN ctename ON emp.mgr = ctename.empno
)
SELECT * FROM ctename;
CREATE VIEW ctenames AS (
  WITH RECURSIVE ctename AS (
      SELECT empno, ename,
             ename AS path
      FROM emp
      WHERE empno = 7566
     UNION ALL
      SELECT emp.empno, emp.ename,
             ctename.path || ' -> ' || emp.ename
      FROM emp
         JOIN ctename ON emp.mgr = ctename.empno
  )
  SELECT * FROM ctename
);
WITH RECURSIVE fib AS (
      SELECT 1 AS n,
             1::bigint AS "fibₙ",
             1::bigint AS "fibₙ₊₁"
   UNION ALL
      SELECT n+1,
             "fibₙ₊₁",
             "fibₙ" + "fibₙ₊₁"
      FROM fib
)
SELECT n, "fibₙ" FROM fib
LIMIT 20;
insert into a values (42);
with cte1 as (Select i as j from a) select * from cte1;
with cte1 as (with b as (Select i as j from a) Select j from b) select x from cte1 t1(x);
with cte1(xxx) as (with ncte(yyy) as (Select i as j from a) Select yyy from ncte) select xxx from cte1;
with cte1 as (with b as (Select i as j from a) select j from b), cte2 as (with c as (select ref.j+1 as k from cte1 as ref) select k from c) select * from cte1 , cte2;
with cte1 as (Select i as j from a) select * from (with cte2 as (select max(j) as j from cte1) select * from cte2) f;
with cte1 as (Select i as j from a) select * from cte1 where j = (with cte2 as (select max(j) as j from cte1) select j from cte2);
with cte as (Select i as j from a) select * from cte where j = (with cte as (select max(j) as j from cte) select j from cte);
create or replace table orders(ordered_at int);
create or replace table stg_orders(ordered_at int);
insert into orders values (1);
insert into stg_orders values (1);
with
orders as (
    select * from main.stg_orders
    where ordered_at >= (select max(ordered_at) from main.orders)
),
some_more_logic as (
    select *
    from orders
)
select * from some_more_logic;
create table series as select * from generate_series(-1,1) x(n);
with recursive generation1(x,y) as (   --the initial board setup
  select 2, 3
  union
  select 3, 3
  union
  select 4, 3
),
game(n, x, y) as (
  select 1 AS n, x, y from generation1 -- generation 1 is initial board setup
  union all
  select n+1, new_x, new_y from   -- generation n+1
  (
    select n, x+offset_x new_x, y+offset_y new_y, max(self) over (partition by n+1, x+offset_x, y+offset_y) cell_was_already_alive
    from game, (
        select x.n offset_x, y.n offset_y, case when x.n = 0 and y.n = 0 then 1 else 0 end self
        from series x(n), series y(n) --join 2 row generators to get 9 pairs
      ) offsets_to_neighbours_and_self(offset_x, offset_y, self)
    where n < 100
  ) all_impacts
  group by n+1, new_x, new_y, cell_was_already_alive -- from all impacts back to cells
  having (cell_was_already_alive=1 and count(*) < 5 and count(*) > 2) or count(*) = 3 --decide if cell is alive
)
select * from game where n=4 order by n, x, y; --select generation 4;
with recursive generation1(x,y) as (   --the initial board setup
  select 2, 3
  union
  select 3, 3
  union
  select 4, 3
),
game(n, x, y) as (
  select 1 AS n, x, y from generation1 -- generation 1 is initial board setup
  union all
  select n+1, new_x, new_y from   -- generation n+1
  (
    select n, x+offset_x new_x, y+offset_y new_y, max(self) over (partition by n+1, x+offset_x, y+offset_y) cell_was_already_alive
    from game, (
        select x.n offset_x, y.n offset_y, case when x.n = 0 and y.n = 0 then 1 else 0 end self
        from generate_series(-1,1) x(n), generate_series(-1,1) y(n) --join 2 row generators to get 9 pairs
      ) offsets_to_neighbours_and_self(offset_x, offset_y, self)
    where n < 100
  ) all_impacts
  group by n+1, new_x, new_y, cell_was_already_alive -- from all impacts back to cells
  having (cell_was_already_alive=1 and count(*) < 5 and count(*) > 2) or count(*) = 3 --decide if cell is alive
)
select * from game where n=4 order by n, x, y; --select generation 4;
WITH RECURSIVE t AS
(
	SELECT 1 AS x
UNION
	SELECT t1.x + t2.x + t3.x AS x
	FROM t t1, t t2, t t3
	WHERE t1.x < 100
)
SELECT * FROM t ORDER BY 1;
WITH RECURSIVE t AS
(
	SELECT 1 AS x
UNION
	SELECT (t1.x + t2.x + t3.x)::HUGEINT AS x
	FROM t t1, t t2, t t3
	WHERE t1.x < 100
)
SELECT * FROM t ORDER BY 1;
WITH RECURSIVE t AS
(
	SELECT 1 AS x
UNION
	SELECT SUM(x) AS x
	FROM t, a
	WHERE x < 1000000
)
SELECT * FROM t ORDER BY 1 NULLS LAST;
WITH RECURSIVE t AS
(
	SELECT 1 AS x
UNION
	SELECT SUM(x) AS x
	FROM t, a
	WHERE x < 1000000 AND t.x=a.i
)
SELECT * FROM t ORDER BY 1 NULLS LAST;
WITH RECURSIVE t AS
(
	SELECT 1 AS x
UNION
	SELECT SUM(x)
	FROM
		(SELECT SUM(x) FROM t) t1(x), a
	WHERE x < 1000
)
SELECT * FROM t ORDER BY 1 NULLS LAST;
WITH RECURSIVE t AS
(
	SELECT 1 AS x
UNION
	SELECT (SELECT x + 1 FROM t) AS x
	FROM t
	WHERE x < 5
)
SELECT * FROM t ORDER BY 1 NULLS LAST;
WITH RECURSIVE t AS
(
	SELECT 1 AS x
UNION
	SELECT (SELECT t.x+t2.x FROM t t2 LIMIT 1) AS x
	FROM t
	WHERE x < 10
)
SELECT * FROM t ORDER BY 1 NULLS LAST;
WITH my_list(value) AS (VALUES (1), (2), (3))
    SELECT * FROM my_list LIMIT 0 OFFSET 1;
with RECURSIVE parents_tab (id , value , parent )
as (values (1, 1, 2), (2, 2, 4), (3, 1, 4), (4, 2, -1), (5, 1, 2), (6, 2, 7), (7, 1, -1)
),
parents_tab2(id , value , parent )
as (values (1, 1, 2), (2, 2, 4), (3, 1, 4), (4, 2, -1), (5, 1, 2), (6, 2, 7), (7, 1, -1)
),
parents as (
    select * from parents_tab
    union all
    select id, value+2, parent from parents_tab2
)
select * from parents order by id, value, parent;
with RECURSIVE parents_tab (id , value , parent )
as (values (1, 1, 2), (2, 2, 4), (3, 1, 4), (4, 2, -1), (5, 1, 2), (6, 2, 7), (7, 1, -1)
),
parents_tab2(id , value , parent )
as (values (1, 1, 2), (2, 2, 4), (3, 1, 4), (4, 2, -1), (5, 1, 2), (6, 2, 7), (7, 1, -1)
)
select * from parents_tab
union all
select id, value+2, parent from parents_tab2 ORDER BY id, value, parent;
with parents_tab (id , value , parent )
as (values (1, 1, 2), (2, 2, 4), (3, 1, 4), (4, 2, -1), (5, 1, 2), (6, 2, 7), (7, 1, -1)
),
parents_tab2(id , value , parent )
as (values (1, 1, 2), (2, 2, 4), (3, 1, 4), (4, 2, -1), (5, 1, 2), (6, 2, 7), (7, 1, -1)
),
parents as (
    select * from parents_tab
    union all
    select id, value+2, parent from parents_tab2
)
select * from parents ORDER BY id, value, parent;
create view vparents as
with RECURSIVE parents_tab (id , value , parent )
as (values (1, 1, 2), (2, 2, 4), (3, 1, 4), (4, 2, -1), (5, 1, 2), (6, 2, 7), (7, 1, -1)
),
parents_tab2(id , value , parent )
as (values (1, 1, 2), (2, 2, 4), (3, 1, 4), (4, 2, -1), (5, 1, 2), (6, 2, 7), (7, 1, -1)
)
select * from parents_tab
union all
select id, value+2, parent from parents_tab2;
create table t as with q(id,s) as (values(1,42)),
a(s)as materialized(select 42)
select id from q join a on q.s=a.s;
