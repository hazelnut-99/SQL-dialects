CREATE TABLE tf_1 (
  a integer, "b c" integer, "d e" integer,
  PRIMARY KEY (a),
  UNIQUE ("b c"),
  UNIQUE ("d e")
);;
CREATE TABLE tf_3 (
  g integer, h integer,
  PRIMARY KEY (g),
  UNIQUE (h)
);;
CREATE TABLE tf_2 (
  c integer, d integer, e integer, f integer, g integer,
  PRIMARY KEY (c),
  FOREIGN KEY (d) REFERENCES tf_1 (a),
  FOREIGN KEY (e) REFERENCES tf_1 ("b c"),
  FOREIGN KEY (f) REFERENCES tf_1 ("d e"),
  FOREIGN KEY (g) REFERENCES tf_3 (g),
);;
CREATE TABLE tf_4 (
  h integer,
  FOREIGN KEY (h) REFERENCES tf_3 (h),
);;
SELECT * EXCLUDE (schema_oid, table_oid, database_oid) FROM duckdb_constraints();;
