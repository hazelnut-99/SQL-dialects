DROP TABLE IF EXISTS tab;
CREATE TABLE tab (idna String) ENGINE=MergeTree ORDER BY idna;
INSERT INTO tab VALUES ('straße.münchen.de') ('') ('münchen');
DROP TABLE tab;
DROP TABLE IF EXISTS tab;
CREATE TABLE tab (idna String) ENGINE=MergeTree ORDER BY idna;
INSERT INTO tab VALUES ('xn--') ('london.co.uk') ('ytraße.münchen.de') ('xn--tešla') ('microsoft.com') ('xn--');
