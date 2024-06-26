CREATE SCHEMA testxmlschema;
CREATE TABLE testxmlschema.test1 (a int, b text);
INSERT INTO testxmlschema.test1 VALUES (1, 'one'), (2, 'two'), (-1, null);
CREATE DOMAIN testxmldomain AS varchar;
CREATE TABLE testxmlschema.test2 (z int, y varchar(500), x char(6),
    w numeric(9,2), v smallint, u bigint, t real,
    s time, stz timetz, r timestamp, rtz timestamptz, q date,
    p xml, o testxmldomain, n bool, m bytea, aaa text);
ALTER TABLE testxmlschema.test2 DROP COLUMN aaa;
INSERT INTO testxmlschema.test2 VALUES (55, 'abc', 'def',
    98.6, 2, 999, 0,
    '21:07', '21:11 +05', '2009-06-08 21:07:30', '2009-06-08 21:07:30 -07', '2009-06-08',
    NULL, 'ABC', true, 'XYZ');
DECLARE xc CURSOR WITH HOLD FOR SELECT * FROM testxmlschema.test1 ORDER BY 1, 2;
MOVE BACKWARD ALL IN xc;
CREATE DOMAIN testboolxmldomain AS bool;
CREATE DOMAIN testdatexmldomain AS date;
CREATE TABLE testxmlschema.test3
    AS SELECT true c1,
              true::testboolxmldomain c2,
              '2013-02-21'::date c3,
              '2013-02-21'::testdatexmldomain c4;
