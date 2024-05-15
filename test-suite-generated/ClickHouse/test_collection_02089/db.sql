DROP TABLE IF EXISTS h3_indexes;
CREATE TABLE h3_indexes (h3_index UInt64) ENGINE = Memory;
INSERT INTO h3_indexes VALUES (stringToH3('8f28308280f18f2'));
INSERT INTO h3_indexes VALUES (stringToH3('0x8f28308280f18f2L'));
INSERT INTO h3_indexes VALUES (stringToH3('821c07fffffffff'));
INSERT INTO h3_indexes VALUES (stringToH3('0x821c07fffffffffL'));
