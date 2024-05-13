DROP TABLE IF EXISTS endsWith_test;
CREATE TABLE endsWith_test(S1 String, S2 String, S3 FixedString(2)) ENGINE=Memory;
INSERT INTO endsWith_test values ('11', '22', '33'), ('a', 'a', 'bb'), ('abc', 'bc', '23');
