DROP TABLE IF EXISTS v1;
DROP TABLE IF EXISTS v2;
CREATE TABLE v1 ( id Int32 ) ENGINE = MergeTree() ORDER BY id;
CREATE TABLE v2 ( value Int32 ) ENGINE = MergeTree() ORDER BY value;
INSERT INTO v1 ( id ) VALUES (1);
INSERT INTO v2 ( value ) VALUES (1);
