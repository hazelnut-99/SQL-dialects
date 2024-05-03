DROP TABLE IF EXISTS datetime;
CREATE TABLE datetime (d DateTime('UTC')) ENGINE = Memory;
INSERT INTO datetime(d) VALUES(toDateTime('2016-06-15 23:00:00', 'UTC'));
