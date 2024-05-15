DROP TABLE IF EXISTS toModifiedJulianDay_test;
CREATE TABLE toModifiedJulianDay_test (d String) ENGINE = Memory;
INSERT INTO toModifiedJulianDay_test VALUES ('1858-11-16'), ('1858-11-17'), ('2020-11-01');
DROP TABLE toModifiedJulianDay_test;
DROP TABLE IF EXISTS toModifiedJulianDay_test;
CREATE TABLE toModifiedJulianDay_test (d FixedString(10)) ENGINE = Memory;
INSERT INTO toModifiedJulianDay_test VALUES ('1858-11-16'), ('1858-11-17'), ('2020-11-01');
