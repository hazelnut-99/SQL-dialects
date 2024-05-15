DROP TABLE IF EXISTS tab;
CREATE TABLE tab (str String) ENGINE=MergeTree ORDER BY str;
INSERT INTO tab VALUES ('abc') ('aäoöuü') ('München');
DROP TABLE tab;
DROP TABLE IF EXISTS tab;
CREATE TABLE tab (puny String) ENGINE=MergeTree ORDER BY puny;
INSERT INTO tab VALUES ('Also no punycode') ('London-') ('Mnchen-3ya') ('No punycode') ('Rtting-3ya') ('XYZ no punycode');
