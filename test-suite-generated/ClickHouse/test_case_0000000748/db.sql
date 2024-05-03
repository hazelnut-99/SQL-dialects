DROP TABLE IF EXISTS startsWith_test;
CREATE TABLE startsWith_test(S1 String, S2 String, S3 FixedString(2)) ENGINE=Memory;
INSERT INTO startsWith_test values ('11', '22', '33'), ('a', 'a', 'bb'), ('abc', 'ab', '23');
