DROP TABLE IF EXISTS tab;
CREATE TABLE tab (idna String) ENGINE=MergeTree ORDER BY idna;
INSERT INTO tab VALUES ('straße.münchen.de') ('') ('münchen');
