DROP TABLE IF EXISTS where_qualified;
CREATE TABLE where_qualified(a UInt32, b UInt8) ENGINE = Memory;
INSERT INTO where_qualified VALUES(1, 1);
INSERT INTO where_qualified VALUES(2, 0);
