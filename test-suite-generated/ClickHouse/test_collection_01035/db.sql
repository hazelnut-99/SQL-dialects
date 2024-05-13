DROP TABLE IF EXISTS table1;
CREATE TABLE table1 (str1 String, str2 String) ENGINE = Memory;
INSERT INTO table1 VALUES('qwerty', 'string');
INSERT INTO table1 VALUES('qqq', 'aaa');
INSERT INTO table1 VALUES('aasq', 'xxz');
INSERT INTO table1 VALUES('zxcqwer', '');
INSERT INTO table1 VALUES('', '');
DROP TABLE table1;
