CREATE TABLE bmscantest (a int, b int, t text);
INSERT INTO bmscantest
  SELECT (r%53), (r%59), 'foooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo'
  FROM generate_series(1,70000) r;
CREATE INDEX i_bmtest_a ON bmscantest(a);
CREATE INDEX i_bmtest_b ON bmscantest(b);
