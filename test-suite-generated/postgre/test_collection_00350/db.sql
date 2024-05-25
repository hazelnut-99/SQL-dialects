CREATE TABLE base_tbl (a int PRIMARY KEY, b text DEFAULT 'Unspecified');
INSERT INTO base_tbl SELECT i, 'Row ' || i FROM generate_series(-2, 2) g(i);
CREATE VIEW ro_view1 AS SELECT DISTINCT a, b FROM base_tbl; -- DISTINCT not supported
CREATE VIEW ro_view2 AS SELECT a, b FROM base_tbl GROUP BY a, b; -- GROUP BY not supported
CREATE VIEW ro_view3 AS SELECT 1 FROM base_tbl HAVING max(a) > 0; -- HAVING not supported
CREATE VIEW ro_view4 AS SELECT count(*) FROM base_tbl; -- Aggregate functions not supported
CREATE VIEW ro_view5 AS SELECT a, rank() OVER() FROM base_tbl; -- Window functions not supported
CREATE VIEW ro_view6 AS SELECT a, b FROM base_tbl UNION SELECT -a, b FROM base_tbl; -- Set ops not supported
CREATE VIEW ro_view7 AS WITH t AS (SELECT a, b FROM base_tbl) SELECT * FROM t; -- WITH not supported
CREATE VIEW ro_view9 AS SELECT a, b FROM base_tbl ORDER BY a LIMIT 1; -- LIMIT not supported
CREATE VIEW ro_view10 AS SELECT 1 AS a; -- No base relations
CREATE VIEW ro_view11 AS SELECT b1.a, b2.b FROM base_tbl b1, base_tbl b2; -- Multiple base relations
CREATE VIEW ro_view12 AS SELECT * FROM generate_series(1, 10) AS g(a); -- SRF in rangetable
CREATE VIEW ro_view13 AS SELECT a, b FROM (SELECT * FROM base_tbl) AS t; -- Subselect in rangetable
CREATE VIEW rw_view14 AS SELECT ctid, a, b FROM base_tbl; -- System columns may be part of an updatable view
CREATE VIEW rw_view15 AS SELECT a, upper(b) FROM base_tbl; -- Expression/function may be part of an updatable view
CREATE VIEW rw_view16 AS SELECT a, b, a AS aa FROM base_tbl; -- Repeated column may be part of an updatable view
CREATE VIEW ro_view17 AS SELECT * FROM ro_view1; -- Base relation not updatable
CREATE VIEW ro_view18 AS SELECT * FROM (VALUES(1)) AS tmp(a); -- VALUES in rangetable
CREATE SEQUENCE uv_seq;
CREATE VIEW ro_view19 AS SELECT * FROM uv_seq; -- View based on a sequence
CREATE VIEW ro_view20 AS SELECT a, b, generate_series(1, a) g FROM base_tbl; -- SRF in targetlist not supported
