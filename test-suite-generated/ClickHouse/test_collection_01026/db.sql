DROP DATABASE IF EXISTS test_01155_ordinary;
DROP DATABASE IF EXISTS test_01155_atomic;
CREATE DATABASE test_01155_atomic ENGINE=Atomic;
CREATE TABLE src (s String, x String DEFAULT 'a') ENGINE=MergeTree() PARTITION BY tuple() ORDER BY s;
CREATE MATERIALIZED VIEW mv1 (s String, x String DEFAULT 'b') ENGINE=MergeTree() PARTITION BY tuple() ORDER BY s AS SELECT (*,).1 || 'mv1' as s FROM src;
CREATE TABLE dst (s String, x String DEFAULT 'c') ENGINE=MergeTree() PARTITION BY tuple() ORDER BY s;
CREATE MATERIALIZED VIEW mv2 TO dst (s String, x String DEFAULT 'd') AS SELECT (*,).1 || 'mv2' as s FROM src;
CREATE DICTIONARY dict (s String, x String DEFAULT 'qwerty') PRIMARY KEY s
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'dist' DB 'test_01155_ordinary'))
LIFETIME(MIN 0 MAX 2) LAYOUT(COMPLEX_KEY_CACHE(SIZE_IN_CELLS 123));
