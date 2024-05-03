DROP TABLE IF EXISTS bad_arrays;
CREATE TABLE bad_arrays (a Array(String), b Array(UInt8)) ENGINE = Memory;
INSERT INTO bad_arrays VALUES ([''],[]),([''],[1]);
