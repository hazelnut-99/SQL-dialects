CREATE TEMPORARY TABLE datetime (`d` DateTime('UTC'));
INSERT INTO datetime SELECT * FROM generateRandom() LIMIT 10;
