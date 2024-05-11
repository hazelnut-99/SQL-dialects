CREATE TEMP TABLE foo (f1 serial, f2 text, f3 int default 42);
INSERT INTO foo (f2,f3)
  VALUES ('test', DEFAULT), ('More', 11), (upper('more'), 7+9)
  RETURNING *, f1+f3 AS sum;
DELETE FROM foo WHERE f1 > 2 RETURNING f3, f2, f1, least(f1,f3);
