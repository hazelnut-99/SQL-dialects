DROP TABLE IF EXISTS bool_test;
CREATE TABLE bool_test (value Bool,f String) ENGINE = Memory;
SHOW CREATE TABLE bool_test;
INSERT INTO bool_test (value,f) VALUES (false, 'test'), (true , 'test'), (0, 'test'), (1, 'test'), (FALSE, 'test'), (TRUE, 'test');
