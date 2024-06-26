DROP TABLE IF EXISTS with_fill_date;
CREATE TABLE with_fill_date (d Date, d32 Date32) ENGINE = Memory;
INSERT INTO with_fill_date VALUES (toDate('2020-02-05'), toDate32('2020-02-05'));
INSERT INTO with_fill_date VALUES (toDate('2020-02-16'), toDate32('2020-02-16'));
INSERT INTO with_fill_date VALUES (toDate('2020-03-03'), toDate32('2020-03-03'));
INSERT INTO with_fill_date VALUES (toDate('2020-06-10'), toDate32('2020-06-10'));
DROP TABLE with_fill_date;
DROP TABLE IF EXISTS with_fill_date;
CREATE TABLE with_fill_date (d DateTime('UTC'), d64 DateTime64(3, 'UTC')) ENGINE = Memory;
INSERT INTO with_fill_date VALUES (toDateTime('2020-02-05 10:20:00', 'UTC'), toDateTime64('2020-02-05 10:20:00', 3, 'UTC'));
INSERT INTO with_fill_date VALUES (toDateTime('2020-03-08 11:01:00', 'UTC'), toDateTime64('2020-03-08 11:01:00', 3, 'UTC'));
DROP TABLE with_fill_date;
CREATE TABLE with_fill_date (d Date, id UInt32) ENGINE = Memory;
INSERT INTO with_fill_date VALUES (toDate('2020-02-05'), 1);
INSERT INTO with_fill_date VALUES (toDate('2020-02-16'), 3);
INSERT INTO with_fill_date VALUES (toDate('2020-03-10'), 2);
INSERT INTO with_fill_date VALUES (toDate('2020-03-03'), 3);
