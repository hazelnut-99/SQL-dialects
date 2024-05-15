DROP TABLE IF EXISTS defaulted;
CREATE TABLE defaulted (v6 FixedString(16)) ENGINE=Memory;
INSERT INTO defaulted SELECT toFixedString('::0', 16) FROM numbers(32768);
