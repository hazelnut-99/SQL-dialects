CREATE TABLE integers (a INT);
INSERT INTO integers VALUES (1);
CREATE MACRO cte_sq(a,b) AS (WITH cte AS (SELECT a * 2 AS c) SELECT cte.c + sq.d FROM cte, (SELECT b * 3 AS d) AS sq);
CREATE MACRO nested_cte(needle, haystack) AS needle IN (
    SELECT i FROM (
        WITH ints AS (
            SELECT CAST(UNNEST(string_split(haystack,',')) AS INT) AS i
        )
        SELECT i FROM ints
    ) AS sq
);
CREATE MACRO IFELSE(a,b,c) AS CASE WHEN a THEN b ELSE c END;
CREATE MACRO mod_two(k) AS k%2;
CREATE MACRO add_mac(a, b) AS a + b;
CREATE MACRO double_add(a, b, c) AS add_mac(add_mac(a, b), c);
CREATE MACRO triple_add1(a, b, c, d) AS add_mac(add_mac(a, b), add_mac(c, d));
CREATE MACRO triple_add2(a, b, c, d) as add_mac(add_mac(add_mac(a, b), c), d);
INSERT INTO integers VALUES (41);
CREATE MACRO add_one(a) AS a + 1;
PREPARE v1 AS SELECT add_one(?::INTEGER);
EXECUTE v1(1);
CREATE MACRO my_square(a) AS a * a;
PREPARE v2 AS SELECT my_square(?::INTEGER);
EXECUTE v2(3);
CREATE TABLE documents(id VARCHAR, body VARCHAR);
INSERT INTO documents VALUES ('doc1', ' QUÁCK+QUÁCK+QUÁCK'), ('doc2', ' BÁRK+BÁRK+BÁRK+BÁRK'), ('doc3', ' MÉOW+MÉOW+MÉOW+MÉOW+MÉOW');
CREATE SCHEMA fts_main_documents;
CREATE TABLE fts_main_documents.docs AS (
    SELECT
        row_number() OVER () AS docid,
        id AS name
    FROM
        main.documents
);
CREATE TABLE fts_main_documents.terms AS (
    SELECT
        term,
        docid,
        row_number() OVER (PARTITION BY docid) AS pos
    FROM (
        SELECT
            unnest(string_split_regex(regexp_replace(lower(strip_accents(body)), '[^a-z]', ' ', 'g'), '\s+')) AS term,
            row_number() OVER () AS docid
        FROM main.documents
    ) AS sq
    WHERE
        term != ''
);
ALTER TABLE fts_main_documents.docs ADD len INT;
UPDATE fts_main_documents.docs d
SET len = (
    SELECT count(term)
    FROM fts_main_documents.terms t
    WHERE t.docid = d.docid
);
CREATE TABLE fts_main_documents.dict AS
WITH distinct_terms AS (
    SELECT DISTINCT term, docid
    FROM fts_main_documents.terms
    ORDER BY docid
)
SELECT
    row_number() OVER () AS termid,
    term
FROM
    distinct_terms;
ALTER TABLE fts_main_documents.terms ADD termid INT;
UPDATE fts_main_documents.terms t
SET termid = (
    SELECT termid
    FROM fts_main_documents.dict d
    WHERE t.term = d.term
);
ALTER TABLE fts_main_documents.terms DROP term;
ALTER TABLE fts_main_documents.dict ADD df INT;
UPDATE fts_main_documents.dict d
SET df = (
    SELECT count(distinct docid)
    FROM fts_main_documents.terms t
    WHERE d.termid = t.termid
    GROUP BY termid
);
WITH ppterms AS (
    SELECT unnest(string_split_regex(regexp_replace(lower(strip_accents('QUÁCK BÁRK')), '[^a-z]', ' ', 'g'), '\s+')) AS term
), qtermids AS (
    SELECT termid
    FROM fts_main_documents.dict AS dict
    JOIN ppterms
    USING (term)
), qterms AS (
    SELECT termid,
           docid
    FROM fts_main_documents.terms AS terms
    WHERE termid IN (
        SELECT qtermids.termid FROM qtermids
    )
), subscores AS (
    SELECT docs.docid,
           len,
           term_tf.termid,
           tf,
           df,
           (log((3 - df + 0.5) / (df + 0.5))* ((tf * (1.2 + 1)/(tf + 1.2 * (1 - 0.75 + 0.75 * (len / 4)))))) AS subscore
    FROM (
        SELECT termid,
               docid,
               COUNT(*) AS tf
        FROM qterms
        GROUP BY docid,
                 termid
    ) AS term_tf
    JOIN (
        SELECT DISTINCT docid
        FROM qterms
    ) AS cdocs
    ON term_tf.docid = cdocs.docid
    JOIN fts_main_documents.docs AS docs
    ON term_tf.docid = docs.docid
    JOIN fts_main_documents.dict AS dict
    ON term_tf.termid = dict.termid
)
SELECT name,
       score
FROM (
    SELECT docid,
           sum(subscore) AS score
    FROM subscores
    GROUP BY docid
) AS scores
JOIN fts_main_documents.docs AS docs
ON scores.docid = docs.docid
ORDER BY score DESC
LIMIT 1000;
CREATE MACRO fts_match(docname, query_string) AS docname IN (
WITH ppterms AS (SELECT unnest(string_split_regex(regexp_replace(lower(strip_accents(query_string)), '[^a-z]', ' ', 'g'), '\s+')) AS term),
qtermids AS (SELECT termid FROM fts_main_documents.dict AS dict, ppterms WHERE dict.term = ppterms.term),
qterms AS (SELECT termid, docid FROM fts_main_documents.terms AS terms WHERE termid IN (SELECT qtermids.termid FROM qtermids)),
subscores AS (
SELECT docs.docid, len, term_tf.termid,
        tf, df, (log((3 - df + 0.5) / (df + 0.5))* ((tf * (1.2 + 1)/(tf + 1.2 * (1 - 0.75 + 0.75 * (len / 4)))))) AS subscore
FROM (SELECT termid, docid, COUNT(*) AS tf FROM qterms
    GROUP BY docid, termid) AS term_tf
    JOIN (SELECT docid FROM qterms
        GROUP BY docid) -- HAVING COUNT(DISTINCT termid) = 3)
        AS cdocs ON term_tf.docid = cdocs.docid
    JOIN fts_main_documents.docs AS docs ON term_tf.docid = docs.docid
    JOIN fts_main_documents.dict AS dict ON term_tf.termid = dict.termid)
SELECT name FROM (SELECT docid, sum(subscore) AS score
    FROM subscores GROUP BY docid) AS scores JOIN fts_main_documents.docs AS docs ON
    scores.docid = docs.docid ORDER BY score DESC LIMIT 1000);
CREATE MACRO mywindow(k,v) AS SUM(v) OVER (PARTITION BY k);
WITH grouped AS (SELECT mod(range, 3) AS grp, range AS val FROM RANGE(500))
SELECT DISTINCT grp, mywindow(grp, val) FROM grouped ORDER BY grp;
CREATE TABLE test_tbl (id INT, name string);
CREATE TABLE test2_tbl (id INT, name string);
CREATE TABLE greek_tbl (id INT, name string);
INSERT INTO test_tbl VALUES (1,'tom'), (2,'dick'),(3,'harry'), (4,'mary'), (5,'mungo'), (6,'midge');
;
INSERT INTO test_tbl VALUES (20,'andrew'), (21,'boris'),(22,'Caleb'), (23,'david'), (24,'evan');
INSERT INTO  greek_tbl VALUES (1, 'alpha'), (2, 'beta'), (3, 'gamma'), (4, 'delta'), (5, 'epsilon'),(6, 'zeta'), (7, 'eta') , (8, 'theta'), (9, 'iota') , (10, 'kappa');
;
CREATE  MACRO xt(a,_name) as TABLE SELECT * FROM test_tbl WHERE(id>=a or name=_name);
CREATE  MACRO xt2(a,_name) as TABLE SELECT * FROM test_tbl WHERE(id>=a or name like _name);
CREATE  MACRO sgreek(a,b,c) as TABLE SELECT a,b FROM greek_tbl WHERE(id >= c);
( SELECT* FROM xt(1, 'tom') UNION SELECT* FROM  xt2(1, '%%%') ) INTERSECT SELECT* FROM xt(100,'midge');
(SELECT* FROM xt(1, 'tom') EXCEPT SELECT* FROM xt(20,'tom' )) INTERSECT SELECT* FROM xt(100,'harry');
CREATE  MACRO xtm(cmp_str) as TABLE SELECT id, name FROM test_tbl  WHERE( name similar to cmp_str);
CREATE  MACRO  xt_reg(cmp) as TABLE SELECT * FROM test_tbl WHERE regexp_matches(name ,cmp );
CREATE MACRO   cmp(a,m) as regexp_matches(a,m) or a similar to m;
CREATE  MACRO gm(m) as TABLE SELECT * FROM  greek_tbl WHERE cmp(name,m);
CREATE MACRO xt(a,b) as a+b;
DROP MACRO TABLE xt;
CREATE MACRO xt(id, imax) as TABLE SELECT id,name FROM test_tbl WHERE id<=imax;
CREATE  MACRO range(a,b) as TABLE select a,b from test_tbl;
CREATE TABLE car_pool (
  -- define columns (name / type / default value / nullable)
  id           DECIMAL      ,
  producer     VARCHAR(50)  ,
  model        VARCHAR(50)  ,
  yyyy         DECIMAL       CHECK (yyyy BETWEEN 1970 AND 2020),
  counter      DECIMAL       CHECK (counter >= 0),
  CONSTRAINT   car_pool_pk PRIMARY KEY (id)
);
INSERT INTO car_pool VALUES 
 ( 1, 'VW',     'Golf',    2005, 5),
 ( 2, 'VW',     'Golf',    2006, 2),
 ( 3, 'VW',     'Golf',    2007, 3),
 ( 4, 'VW',     'Golf',    2008, 3),
 ( 5, 'VW',     'Passat',  2005, 5),
 ( 6, 'VW',     'Passat',  2006, 1),
 ( 7, 'VW',     'Beetle',  2005, 1),
 ( 8, 'VW',     'Beetle',  2006, 2),
 ( 9, 'VW',     'Beetle',  2008, 4),
 (10, 'Toyota', 'Corolla', 2005, 4),
 (11, 'Toyota', 'Corolla', 2006, 3),
 (12, 'Toyota', 'Corolla', 2007, 2),
 (13, 'Toyota', 'Corolla', 2008, 4),
 (14, 'Toyota', 'Prius',   2005, 1),
 (15, 'Toyota', 'Prius',   2006, 1),
 (16, 'Toyota', 'Hilux',   2005, 1),
 (17, 'Toyota', 'Hilux',   2006, 1),
 (18, 'Toyota', 'Hilux',   2008, 1);
CREATE MACRO car_pool_cube(g1, g2, hcnt:=1) AS
TABLE SELECT g1, g2, sum(counter) AS cnt  FROM car_pool
GROUP BY CUBE(g1, g2) HAVING cnt >= hcnt order by g1 NULLS LAST, g2 NULLS LAST;
CREATE MACRO car_pool_rollup(g1, g2, hcnt:=1) AS
TABLE SELECT g1, g2, sum(counter) AS cnt  FROM car_pool
GROUP BY ROLLUP(g1, g2) HAVING cnt >= hcnt order by g1, g2;
CREATE MACRO car_pool_groups(g1, g2, hcnt:=1) AS
TABLE SELECT g1, g2, sum(counter) AS cnt  FROM car_pool  
GROUP BY  (g1, g2) HAVING cnt >= hcnt order by g1, g2;
CREATE MACRO f(x := NULL) AS (
	x
);
create table tbl as select 42 i;
create table t as select 41 a;
create macro my_macro2(a := i) as (
	select min(a) from integers
);
insert into integers values (5), (10), (13);
drop table integers;
Create table t1 (a int, b int);
Create table t2 (c int, d int);
CREATE OR REPLACE MACRO eq(x := NULL, y := NULL) AS x = y;
INSERT INTO t1 VALUES (1, 1), (1, 2), (2, 2), (3, 4);
INSERT INTO t2 VALUES (4, 1), (2, 10), (6, 2), (2, 6);
CREATE TABLE cards_tbl  (val int, name string, suit string);
INSERT INTO cards_tbl values (1, 'ace', 'clubs'),    (11,'jack', 'clubs' ),
(12, 'queen', 'clubs' ),     (13, 'king', 'clubs');
INSERT INTO cards_tbl values (1, 'ace', 'diamonds'), (11,'jack', 'diamonds' ),
(12, 'queen', 'diamonds' ),  (13, 'king', 'diamonds');
INSERT INTO cards_tbl values (1, 'ace', 'hearts'),   (11,'jack', 'hearts' ),
(12, 'queen', 'hearts' ),    (13, 'king', 'hearts');
INSERT INTO cards_tbl values (1, 'ace', 'spades'),   (11,'jack', 'spades' ),
(12, 'queen', 'spades' ),    (13, 'king', 'spades');
CREATE MACRO card_select(_val_min:=1, _val_max:=1,  _name:='%', _suit:='%')
as TABLE SELECT * FROM  cards_tbl WHERE val>=_val_min AND val<=_val_max AND name like  _name AND suit like _suit;
CREATE MACRO card_select_args(_val_min, _val_max,  _name:='%', _suit:='%')
as TABLE SELECT * FROM  cards_tbl WHERE val>=_val_min AND val<=_val_max AND name like  _name AND suit like _suit;
CREATE MACRO card_dfl() as TABLE SELECT DISTINCT suit FROM cards_tbl where suit='hearts';
CREATE MACRO  sc(aorder, border, nlimit) AS TABLE SELECT * FROM cards_tbl ORDER BY aorder,border LIMIT nlimit;
CREATE MACRO sc2(dlimit, noffset) AS TABLE SELECT DISTINCT  suit from cards_tbl order by all limit dlimit% offset noffset;
CREATE MACRO sc3(col) AS TABLE SELECT DISTINCT ON (col) col FROM cards_tbl ORDER BY col;
CREATE MACRO card_no_tbl() as TABLE SELECT * FROM suit_tbl;
CREATE MACRO card_select_val(_val_min, _val_min) as TABLE SELECT * FROM cards_tbl WHERE val>=_val_min AND val<=_val_max;
CREATE TABLE integers (a INT);
INSERT INTO integers VALUES (1);
CREATE MACRO parameterized_cte(a) AS (WITH cte AS (SELECT a AS answer) SELECT answer FROM cte);
CREATE MACRO in_with_cte(i) AS i IN (WITH cte AS (SELECT a AS answer FROM integers) SELECT answer FROM cte);
CREATE MACRO plus42(a) AS (WITH cte AS (SELECT 42 AS answer) SELECT answer + a FROM cte);
CREATE MACRO plus1(a) AS (WITH tbl AS (SELECT 1 AS one) SELECT one + a FROM tbl);
CREATE MACRO deep_cte(param) AS (
    WITH cte1 AS (
        WITH cte2 AS (
            WITH cte3 AS (
                WITH cte4 AS (
                    SELECT param AS d
                )
                SELECT d AS c FROM cte4
            )
            SELECT c AS b FROM cte3
        )
        SELECT b AS a FROM cte2
    )
    SELECT a FROM cte1
);
INSERT INTO integers VALUES (1);
CREATE MACRO subquery(a) AS (SELECT a);
CREATE MACRO a1(b) AS (SELECT a + a FROM integers);
CREATE MACRO a2(b) AS (SELECT i.a + b FROM integers i);
CREATE MACRO my_extract(x) AS x.a.b;
create macro test(a, b) as a + b;
create or replace macro test(a, b) as a + a;
create macro if not exists test(a, b) as a + b;
drop macro test;
create temporary macro test(a, b) as a + b;
create or replace temporary macro test(a, b) as a + a;
create temporary macro if not exists test(a, b) as a + b;
CREATE MACRO "sum"(x) AS (CASE WHEN sum(x) IS NULL THEN 0 ELSE sum(x) END);
DROP MACRO sum;
CREATE MACRO "sum"(x) AS (CASE WHEN system.main.sum(x) IS NULL THEN 0 ELSE system.main.sum(x) END);
create macro m1(a) as a+1;
create macro m2(a) as m1(a)+1;
create or replace macro m1(a) as m2(a)+1;
create macro m3(a) as a+1;
create macro m4(a) as table select m3(a);
create or replace macro m3(a) as (from m4(42));
INSERT INTO integers VALUES (42), (42);
CREATE SEQUENCE seq;
CREATE MACRO in_next_n(x, s, n) AS x IN (
    WITH RECURSIVE cte AS (
            SELECT nextval(s) AS nxt, 1 AS iter
        UNION ALL
            SELECT nextval(s), iter + 1
            FROM cte
            WHERE iter < n
    )
    SELECT nxt
    FROM cte
);
CREATE MACRO in_next_n2(x, s, n) AS x IN (
    WITH RECURSIVE cte AS (
            SELECT nextval(s) AS nxt, n AS n
        UNION ALL
            SELECT nextval(s), cte.n - 1
            FROM cte
            WHERE cte.n > 1
    )
    SELECT nxt
    FROM cte
);
DROP SEQUENCE seq;
CREATE SEQUENCE seq1;
CREATE SEQUENCE seq2 INCREMENT BY 2 START WITH 2;
CREATE MACRO test(s1, s2, x) AS nextval(s1) + nextval(s2) + x;
DROP SEQUENCE seq1;
DROP SEQUENCE seq2;
CREATE MACRO add_macro(a, b) AS a + b;
CREATE SEQUENCE seqq;
create macro information_schema.foo(a) as a;
create table information_schema.integers(i int);
INSERT INTO integers VALUES (1);
CREATE MACRO one() AS (SELECT 1);
DROP MACRO one;
CREATE MACRO having_macro(x) AS (SELECT * FROM integers GROUP BY a HAVING a = x);
CREATE MACRO union_macro(x, y, z) AS (SELECT x IN (SELECT y UNION ALL SELECT z));
CREATE MACRO in_expression_list(x, y, z) AS (SELECT x IN (VALUES (y), (z)));
