DROP DATABASE IF EXISTS test_01392;
CREATE DATABASE test_01392;
CREATE TABLE test_01392.tableConversion (conversionId String, value Nullable(Double)) ENGINE = Log();
CREATE TABLE test_01392.tableClick (clickId String, conversionId String, value Nullable(Double)) ENGINE = Log();
CREATE TABLE test_01392.leftjoin (id String) ENGINE = Log();
INSERT INTO test_01392.tableConversion(conversionId, value) VALUES ('Conversion 1', 1);
INSERT INTO test_01392.tableClick(clickId, conversionId, value) VALUES ('Click 1', 'Conversion 1', 14);
INSERT INTO test_01392.tableClick(clickId, conversionId, value) VALUES ('Click 2', 'Conversion 1', 15);
INSERT INTO test_01392.tableClick(clickId, conversionId, value) VALUES ('Click 3', 'Conversion 1', 16);
