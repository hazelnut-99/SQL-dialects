DROP TABLE IF EXISTS globalin;
CREATE TABLE globalin (CounterID UInt32, StartDate Date ) ENGINE = Memory;
INSERT INTO globalin VALUES (34, toDate('2017-10-02')), (42, toDate('2017-10-02')), (55, toDate('2017-10-01'));
