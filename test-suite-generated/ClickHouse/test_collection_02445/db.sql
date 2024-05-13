DROP DATABASE IF EXISTS sqllt SYNC;
DROP USER IF EXISTS sqllt_user;
DROP ROLE IF EXISTS sqllt_role;
DROP POLICY IF EXISTS sqllt_policy ON sqllt.table, sqllt.view, sqllt.dictionary;
DROP ROW POLICY IF EXISTS sqllt_row_policy ON sqllt.table, sqllt.view, sqllt.dictionary;
DROP QUOTA IF EXISTS sqllt_quota;
