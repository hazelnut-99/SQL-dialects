DROP TABLE IF EXISTS fromModifiedJulianDay_test;
CREATE TABLE fromModifiedJulianDay_test (d Int32) ENGINE = Memory;
INSERT INTO fromModifiedJulianDay_test VALUES (-1), (0), (59154);
