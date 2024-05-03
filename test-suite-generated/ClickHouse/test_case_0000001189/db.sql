DROP TABLE IF EXISTS h3_indexes;
CREATE TABLE h3_indexes (h3_index UInt64) ENGINE = Memory;
INSERT INTO h3_indexes VALUES (stringToH3('0x85283473fffffffL'));
INSERT INTO h3_indexes VALUES (stringToH3('85283473fffffff'));
INSERT INTO h3_indexes VALUES (stringToH3('0x8167bffffffffffL'));
INSERT INTO h3_indexes VALUES (stringToH3('0x804dfffffffffffL'));
