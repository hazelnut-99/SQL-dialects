DROP TABLE IF EXISTS join_test;
CREATE TABLE join_test (id UInt16, num UInt16) engine = Join(ANY, LEFT, id);
DROP TABLE join_test;
CREATE TABLE join_test (id UInt16, num Nullable(UInt16)) engine = Join(ANY, LEFT, id);
