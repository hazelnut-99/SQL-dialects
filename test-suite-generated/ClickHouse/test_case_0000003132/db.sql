DROP TABLE IF EXISTS join_test;
CREATE TABLE join_test (id UInt16, num UInt16) engine = Join(ANY, LEFT, id);
