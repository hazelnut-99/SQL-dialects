DROP TABLE IF EXISTS min_max_with_nullable_string;
CREATE TABLE min_max_with_nullable_string (
  t DateTime,
  nullable_str Nullable(String),
  INDEX nullable_str_min_max nullable_str TYPE minmax GRANULARITY 1
) ENGINE = MergeTree ORDER BY (t);
INSERT INTO min_max_with_nullable_string(t) VALUES (now()) (now());
