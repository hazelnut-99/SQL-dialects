DROP TABLE IF EXISTS sum_map;
CREATE TABLE sum_map(date Date, timeslot DateTime, statusMap Nested(status UInt16, requests UInt64)) ENGINE = Log;
INSERT INTO sum_map VALUES ('2000-01-01', '2000-01-01 00:00:00', [1, 2, 3], [10, 10, 10]), ('2000-01-01', '2000-01-01 00:00:00', [3, 4, 5], [10, 10, 10]), ('2000-01-01', '2000-01-01 00:01:00', [4, 5, 6], [10, 10, 10]), ('2000-01-01', '2000-01-01 00:01:00', [6, 7, 8], [10, 10, 10]);
DROP TABLE sum_map;
DROP TABLE IF EXISTS sum_map_overflow;
CREATE TABLE sum_map_overflow(events Array(UInt8), counts Array(UInt8)) ENGINE = Log;
INSERT INTO sum_map_overflow VALUES ([1], [255]), ([1], [2]);
DROP TABLE sum_map_overflow;
