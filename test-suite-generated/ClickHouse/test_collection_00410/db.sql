DROP TABLE IF EXISTS globalin;
CREATE TABLE globalin (CounterID UInt32, StartDate Date ) ENGINE = Memory;
INSERT INTO globalin VALUES (34, toDate('2017-10-02')), (42, toDate('2017-10-02')), (55, toDate('2017-10-01'));
DROP TABLE globalin;
DROP TABLE IF EXISTS union_bug;
CREATE TABLE union_bug (
    Event String,
    Datetime DateTime('Asia/Istanbul')
) Engine = Memory;
INSERT INTO union_bug VALUES ('A', 1), ('B', 2);
