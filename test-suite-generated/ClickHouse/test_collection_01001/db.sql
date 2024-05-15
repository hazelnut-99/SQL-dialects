DROP TABLE IF EXISTS source_table;
CREATE TABLE source_table (x UInt16) ENGINE = TinyLog;
DROP TABLE IF EXISTS dest_view;
CREATE VIEW dest_view (x UInt64) AS SELECT * FROM source_table;
