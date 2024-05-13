DROP TABLE IF EXISTS target_table;
DROP TABLE IF EXISTS logins;
DROP TABLE IF EXISTS mv_logins2target;
DROP TABLE IF EXISTS checkouts;
DROP TABLE IF EXISTS mv_checkouts2target;
CREATE TABLE logins (
    id UInt64,
    ts DateTime('UTC')
) Engine=MergeTree ORDER BY id;
CREATE TABLE checkouts (
    id UInt64,
    ts DateTime('UTC')
) Engine=MergeTree ORDER BY id;
SYSTEM STOP MERGES target_table;
SYSTEM STOP MERGES checkouts;
SYSTEM STOP MERGES logins;
INSERT INTO logins SELECT number as id,    '2000-01-01 08:00:00' from numbers(50000);
INSERT INTO checkouts SELECT number as id, '2000-01-01 10:00:00' from numbers(50000);
INSERT INTO logins    SELECT number as id, '2000-01-01 11:00:00' from numbers(1000);
INSERT INTO checkouts SELECT number as id, '2000-01-01 11:10:00' from numbers(1000);
INSERT INTO logins    SELECT number+2 as id, '2001-01-01 11:10:01' from numbers(1);
INSERT INTO checkouts SELECT number+2 as id, '2001-01-01 11:10:02' from numbers(1);
