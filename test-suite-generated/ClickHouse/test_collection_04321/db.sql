DROP TABLE IF EXISTS all_valid;
CREATE TABLE all_valid (id UInt64, query String) ENGINE=MergeTree ORDER BY id;
INSERT INTO all_valid VALUES (1, 'SELECT 1') (2, 'SeLeCt 22') (3, 'InSerT into TAB values (\'\')');
DROP TABLE IF EXISTS some_invalid;
CREATE TABLE some_invalid (id UInt64, query String) ENGINE=MergeTree ORDER BY id;
INSERT INTO some_invalid VALUES (1, 'SELECT 1') (2, 'SeLeCt 2') (3, 'bad 3') (4, 'select 4') (5, 'bad 5') (6, '') (7, 'SELECT 7');
