DROP TABLE IF EXISTS join_table_mutation;
CREATE TABLE join_table_mutation(id Int32, name String) ENGINE = Join(ANY, LEFT, id);
INSERT INTO join_table_mutation select number, toString(number) from numbers(100);
ALTER TABLE join_table_mutation DELETE WHERE id = 10;
INSERT INTO join_table_mutation VALUES (10, 'm10');
