DROP DATABASE IF EXISTS sqllt SYNC;
DROP USER IF EXISTS sqllt_user;
DROP ROLE IF EXISTS sqllt_role;
DROP POLICY IF EXISTS sqllt_policy ON sqllt.table, sqllt.view, sqllt.dictionary;
DROP ROW POLICY IF EXISTS sqllt_row_policy ON sqllt.table, sqllt.view, sqllt.dictionary;
DROP QUOTA IF EXISTS sqllt_quota;
CREATE DATABASE sqllt;
CREATE TABLE sqllt.table
(
    i UInt8, s String
)
ENGINE = MergeTree PARTITION BY tuple() ORDER BY tuple();
CREATE VIEW sqllt.view AS SELECT i, s FROM sqllt.table;
CREATE DICTIONARY sqllt.dictionary (key UInt64, value UInt64) PRIMARY KEY key SOURCE(CLICKHOUSE(DB 'sqllt' TABLE 'table' HOST 'localhost' PORT 9001)) LIFETIME(0) LAYOUT(FLAT());
ALTER TABLE sqllt.table ADD COLUMN new_col UInt32 DEFAULT 123456789;
ALTER TABLE sqllt.table COMMENT COLUMN new_col 'dummy column with a comment';
ALTER TABLE sqllt.table CLEAR COLUMN new_col;
ALTER TABLE sqllt.table MODIFY COLUMN new_col DateTime DEFAULT '2015-05-18 07:40:13';
ALTER TABLE sqllt.table MODIFY COLUMN new_col REMOVE COMMENT;
ALTER TABLE sqllt.table RENAME COLUMN new_col TO the_new_col;
ALTER TABLE sqllt.table DROP COLUMN the_new_col;
ALTER TABLE sqllt.table UPDATE i = i + 1 WHERE 1;
ALTER TABLE sqllt.table DELETE WHERE i > 65535;
