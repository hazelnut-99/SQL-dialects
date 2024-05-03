DROP TABLE IF EXISTS arrayDistinct_test;
CREATE TABLE arrayDistinct_test(arr_int Array(UInt8), arr_string Array(String)) ENGINE=Memory;
INSERT INTO arrayDistinct_test values ([1, 2, 3], ['a', 'b', 'c']), ([21, 21, 21, 21], ['123', '123', '123']);
