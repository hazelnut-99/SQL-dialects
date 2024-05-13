DROP TABLE IF EXISTS table_with_defaults_on_aliases;
CREATE TABLE table_with_defaults_on_aliases (col1 UInt32, col2 ALIAS col1, col3 DEFAULT col2) Engine = MergeTree() ORDER BY tuple();
SYSTEM STOP MERGES table_with_defaults_on_aliases;
INSERT INTO table_with_defaults_on_aliases (col1) VALUES (1);
ALTER TABLE table_with_defaults_on_aliases ADD COLUMN col4 UInt64 DEFAULT col2 * col3;
INSERT INTO table_with_defaults_on_aliases (col1) VALUES (2);
