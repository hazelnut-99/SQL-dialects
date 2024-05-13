DROP TABLE IF EXISTS tab;
CREATE TABLE tab (str String) ENGINE=MergeTree ORDER BY str;
INSERT INTO tab VALUES ('abc') ('aäoöuü') ('München');
