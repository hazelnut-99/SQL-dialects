DROP TABLE IF EXISTS bloom_filter_nullable_index;
DROP TABLE IF EXISTS nullable_string_value;
CREATE TABLE nullable_string_value (value Nullable(String)) ENGINE=TinyLog;
INSERT INTO nullable_string_value VALUES ('test');
