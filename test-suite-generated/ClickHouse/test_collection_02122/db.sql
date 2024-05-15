DROP TABLE IF EXISTS with_fill_date;
CREATE TABLE with_fill_date (d Date, d32 Date32) ENGINE = Memory;
INSERT INTO with_fill_date VALUES (toDate('2020-02-05'), toDate32('2020-02-05'));
INSERT INTO with_fill_date VALUES (toDate('2020-02-16'), toDate32('2020-02-16'));
INSERT INTO with_fill_date VALUES (toDate('2020-03-03'), toDate32('2020-03-03'));
INSERT INTO with_fill_date VALUES (toDate('2020-06-10'), toDate32('2020-06-10'));
