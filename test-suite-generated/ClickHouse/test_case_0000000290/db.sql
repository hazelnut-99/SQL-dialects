DROP TABLE IF EXISTS buffer_00126;
DROP TABLE IF EXISTS null_sink_00126;
CREATE TABLE null_sink_00126 (a UInt8, b String, c Array(UInt32)) ENGINE = Null;
CREATE TABLE buffer_00126 (a UInt8, b String, c Array(UInt32)) ENGINE = Buffer(currentDatabase(), null_sink_00126, 1, 1000, 1000, 1000, 1000, 1000000, 1000000);
INSERT INTO buffer_00126 VALUES (1, '2', [3]);
