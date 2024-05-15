DROP DATABASE IF EXISTS 01778_db;
CREATE DATABASE 01778_db;
CREATE TABLE 01778_db.hierarchy_source_table (id UInt64, parent_id UInt64) ENGINE = TinyLog;
INSERT INTO 01778_db.hierarchy_source_table VALUES (1, 0), (2, 1), (3, 1), (4, 2);
CREATE DICTIONARY 01778_db.hierarchy_flat_dictionary
(
    id UInt64,
    parent_id UInt64 HIERARCHICAL
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'hierarchy_source_table' DB '01778_db'))
LAYOUT(FLAT())
LIFETIME(MIN 1 MAX 1000);
DROP DICTIONARY 01778_db.hierarchy_flat_dictionary;
CREATE DICTIONARY 01778_db.hierarchy_hashed_dictionary
(
    id UInt64,
    parent_id UInt64 HIERARCHICAL
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'hierarchy_source_table' DB '01778_db'))
LAYOUT(HASHED())
LIFETIME(MIN 1 MAX 1000);
DROP DICTIONARY 01778_db.hierarchy_hashed_dictionary;
CREATE DICTIONARY 01778_db.hierarchy_cache_dictionary
(
    id UInt64,
    parent_id UInt64 HIERARCHICAL
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'hierarchy_source_table' DB '01778_db'))
LAYOUT(CACHE(SIZE_IN_CELLS 10))
LIFETIME(MIN 1 MAX 1000);
DROP DICTIONARY 01778_db.hierarchy_cache_dictionary;
CREATE DICTIONARY 01778_db.hierarchy_direct_dictionary
(
    id UInt64,
    parent_id UInt64 HIERARCHICAL
)
PRIMARY KEY id
SOURCE(CLICKHOUSE(HOST 'localhost' PORT tcpPort() USER 'default' TABLE 'hierarchy_source_table' DB '01778_db'))
LAYOUT(DIRECT());
