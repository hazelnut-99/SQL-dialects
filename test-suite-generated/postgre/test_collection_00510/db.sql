WITH q1(x,y) AS (SELECT 1,2)
SELECT * FROM q1, q1 AS q2;
WITH RECURSIVE t(n) AS (
    VALUES (1)
UNION ALL
    SELECT n+1 FROM t WHERE n < 100
)
SELECT sum(n) FROM t;
WITH RECURSIVE t(n) AS (
    SELECT (VALUES(1))
UNION ALL
    SELECT n+1 FROM t WHERE n < 5
)
SELECT * FROM t;
COMMIT;
CREATE TABLE withz AS SELECT i AS k, (i || ' v')::text v FROM generate_series(1, 16, 3) i;
ALTER TABLE withz ADD UNIQUE (k);
DROP TABLE withz;
CREATE TABLE m AS SELECT i AS k, (i || ' v')::text v FROM generate_series(1, 16, 3) i;
ALTER TABLE m ADD UNIQUE (k);
DROP TABLE m;
CREATE TEMPORARY TABLE yy (a INTEGER);
CREATE FUNCTION y_trigger() RETURNS trigger AS $$
begin
  raise notice 'y_trigger: a = %', new.a;
  return new;
end;
$$ LANGUAGE plpgsql;
CREATE OR REPLACE FUNCTION y_trigger() RETURNS trigger AS $$
begin
  raise notice 'y_trigger';
  return null;
end;
$$ LANGUAGE plpgsql;
DROP FUNCTION y_trigger();
CREATE TEMP TABLE parent ( id int, val text );
CREATE TEMP TABLE child1 ( ) INHERITS ( parent );
CREATE TEMP TABLE child2 ( ) INHERITS ( parent );
INSERT INTO parent VALUES ( 1, 'p1' );
INSERT INTO child1 VALUES ( 11, 'c11' ),( 12, 'c12' );
INSERT INTO child2 VALUES ( 23, 'c21' ),( 24, 'c22' );
