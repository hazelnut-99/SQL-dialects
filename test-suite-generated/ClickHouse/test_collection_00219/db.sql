DROP TABLE IF EXISTS sum_map;
CREATE TABLE sum_map(date Date, timeslot DateTime, statusMap Nested(status UInt16, requests UInt64)) ENGINE = Log;
INSERT INTO sum_map VALUES ('2000-01-01', '2000-01-01 00:00:00', [1, 2, 3], [10, 10, 10]), ('2000-01-01', '2000-01-01 00:00:00', [3, 4, 5], [10, 10, 10]), ('2000-01-01', '2000-01-01 00:01:00', [4, 5, 6], [10, 10, 10]), ('2000-01-01', '2000-01-01 00:01:00', [6, 7, 8], [10, 10, 10]);
DROP TABLE sum_map;
DROP TABLE IF EXISTS sum_map_overflow;
CREATE TABLE sum_map_overflow(events Array(UInt8), counts Array(UInt8)) ENGINE = Log;
INSERT INTO sum_map_overflow VALUES ([1], [255]), ([1], [2]);
DROP TABLE sum_map_overflow;
DROP TABLE IF EXISTS sum_map_decimal;
CREATE TABLE sum_map_decimal(
    statusMap Nested(
        goal_id UInt16,
        revenue Decimal32(5)
    )
) ENGINE = Log;
INSERT INTO sum_map_decimal VALUES ([1, 2, 3], [1.0, 2.0, 3.0]), ([3, 4, 5], [3.0, 4.0, 5.0]), ([4, 5, 6], [4.0, 5.0, 6.0]), ([6, 7, 8], [6.0, 7.0, 8.0]);
