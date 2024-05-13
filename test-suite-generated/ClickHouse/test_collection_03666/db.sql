DROP TABLE IF EXISTS dtest;
CREATE TABLE dtest ( `a` Decimal(18, 0), `b` Decimal(18, 1), `c` Decimal(36, 0) ) ENGINE = Memory;
INSERT INTO dtest VALUES ('33', '44.4', '35');
