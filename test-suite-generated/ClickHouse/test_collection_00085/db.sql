DROP TABLE IF EXISTS numbers_squashed;
CREATE TABLE numbers_squashed (number UInt8) ENGINE = StripeLog;
INSERT INTO numbers_squashed
SELECT arrayJoin(range(10)) AS number
UNION ALL
SELECT arrayJoin(range(100))
UNION ALL
SELECT arrayJoin(range(10));
