DROP TABLE IF EXISTS join_table_mutation;
CREATE TABLE join_table_mutation(id Int32, name String) ENGINE = Join(ANY, LEFT, id);
INSERT INTO join_table_mutation select number, toString(number) from numbers(100);
