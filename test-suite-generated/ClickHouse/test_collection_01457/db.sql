DROP TABLE IF EXISTS map_formats;
CREATE TABLE map_formats (m Map(String, UInt32), m1 Map(String, Date), m2 Map(String, Array(UInt32))) ENGINE = Log;
INSERT INTO map_formats VALUES(map('k1', 1, 'k2', 2, 'k3', 3), map('k1', toDate('2020-05-05')), map('k1', [], 'k2', [7, 8]));
INSERT INTO map_formats VALUES(map('k1', 10, 'k3', 30), map('k2', toDate('2020-06-06')), map());
