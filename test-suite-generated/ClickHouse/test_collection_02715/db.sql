DROP TABLE IF EXISTS 02540_date;
CREATE TABLE 02540_date (txt String, x Date) engine=Memory;
INSERT INTO 02540_date VALUES('65535', 65535);
INSERT INTO 02540_date VALUES('toInt32(65535)', toInt32(65535));
INSERT INTO 02540_date VALUES('toUInt32(65535)', toUInt32(65535));
INSERT INTO 02540_date VALUES('toDate(65535)', toDate(65535));
INSERT INTO 02540_date VALUES('CAST(65535 as UInt16)', CAST(65535 as UInt16));
INSERT INTO 02540_date VALUES('CAST(65535 as Int32)', CAST(65535 as Int32));
INSERT INTO 02540_date VALUES('CAST(65535 as UInt32)', CAST(65535 as UInt32));
INSERT INTO 02540_date VALUES('CAST(65535 as Date)', CAST(65535 as Date));
INSERT INTO 02540_date VALUES('65534', 65534);
INSERT INTO 02540_date VALUES('toUInt16(65534)', toUInt16(65534));
INSERT INTO 02540_date VALUES('toInt32(65534)', toInt32(65534));
INSERT INTO 02540_date VALUES('toUInt32(65534)', toUInt32(65534));
INSERT INTO 02540_date VALUES('toDate(65534)', toDate(65534));
INSERT INTO 02540_date VALUES('CAST(65534 as UInt16)', CAST(65534 as UInt16));
INSERT INTO 02540_date VALUES('CAST(65534 as Int32)', CAST(65534 as Int32));
INSERT INTO 02540_date VALUES('CAST(65534 as UInt32)', CAST(65534 as UInt32));
INSERT INTO 02540_date VALUES('CAST(65534 as Date)', CAST(65534 as Date));
INSERT INTO 02540_date VALUES('0', 0);
INSERT INTO 02540_date VALUES('toUInt16(0)', toUInt16(0));
INSERT INTO 02540_date VALUES('toInt32(0)', toInt32(0));
INSERT INTO 02540_date VALUES('toUInt32(0)', toUInt32(0));
INSERT INTO 02540_date VALUES('toDate(0)', toDate(0));
INSERT INTO 02540_date VALUES('CAST(0 as UInt16)', CAST(0 as UInt16));
INSERT INTO 02540_date VALUES('CAST(0 as Int32)', CAST(0 as Int32));
INSERT INTO 02540_date VALUES('CAST(0 as UInt32)', CAST(0 as UInt32));
INSERT INTO 02540_date VALUES('CAST(0 as Date)', CAST(0 as Date));
INSERT INTO 02540_date VALUES('65536', 65536);
INSERT INTO 02540_date VALUES('toInt32(65536)', toInt32(65536));
INSERT INTO 02540_date VALUES('toUInt32(65536)', toUInt32(65536));
INSERT INTO 02540_date VALUES('toDate(65536)', toDate(65536));
INSERT INTO 02540_date VALUES('CAST(65536 as Int32)', CAST(65536 as Int32));
INSERT INTO 02540_date VALUES('CAST(65536 as UInt32)', CAST(65536 as UInt32));
INSERT INTO 02540_date VALUES('CAST(65536 as Date)', CAST(65536 as Date));
