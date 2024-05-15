DROP TABLE IF EXISTS A;
WITH 'UTC' as timezone SELECT timezone, timeZoneOf(now64(3, timezone)) == timezone;
WITH 'Europe/Minsk' as timezone SELECT timezone, timeZoneOf(now64(3, timezone)) == timezone;
CREATE TABLE A(t DateTime64(3, 'UTC')) ENGINE = MergeTree() ORDER BY t;
INSERT INTO A(t) VALUES ('2019-05-03 11:25:25.123456789');
