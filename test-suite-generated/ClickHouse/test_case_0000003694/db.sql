DROP TABLE IF EXISTS tab;
CREATE TABLE tab (col FixedString(2)) engine = MergeTree() ORDER BY col;
INSERT INTO tab VALUES ('AA') ('Aa');
