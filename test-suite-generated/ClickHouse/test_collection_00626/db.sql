DROP TABLE IF EXISTS alter_00665;
CREATE TABLE alter_00665 (`boolean_false` Nullable(String)) ENGINE = MergeTree ORDER BY tuple();
INSERT INTO alter_00665 (`boolean_false`) VALUES (NULL), (''), ('123');
ALTER TABLE alter_00665 MODIFY COLUMN `boolean_false` Nullable(UInt8);
