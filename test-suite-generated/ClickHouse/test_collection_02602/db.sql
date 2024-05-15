DROP TABLE IF EXISTS foo;
CREATE TABLE foo (key UInt32, a String, b Int64, c String) ENGINE = TinyLog;
INSERT INTO foo VALUES (1, 'one', -1, 'een'), (2, 'two', -2, 'twee'), (3, 'three', -3, 'drie'), (4, 'four', -4, 'vier'), (5, 'five', -5, 'vijf');
