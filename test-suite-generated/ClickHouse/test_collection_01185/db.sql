DROP TABLE IF EXISTS grop_uniq_array_date;
CREATE TABLE grop_uniq_array_date (d Date, dt DateTime, id Integer) ENGINE = Memory;
INSERT INTO grop_uniq_array_date VALUES (toDate('2016-12-16'), toDateTime('2016-12-16 12:00:00'), 1) (toDate('2016-12-16'), toDateTime('2016-12-16 12:00:00'), 1);
