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
