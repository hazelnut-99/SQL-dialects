DROP TABLE IF EXISTS bad_arrays;
CREATE TABLE bad_arrays (a Array(String), b Array(UInt8)) ENGINE = Memory;
INSERT INTO bad_arrays VALUES ([''],[]),([''],[1]);
DROP TABLE bad_arrays;
DROP TABLE IF EXISTS bad_arrays;
CREATE TABLE bad_arrays (a Array(String), b Array(String)) ENGINE = Memory;
INSERT INTO bad_arrays VALUES ([''],[]),([''],[]),([''],[]),([''],[]),([''],[]),([''],[]),([''],[]),([''],[]),([''],[]),(['abc'],['223750']),(['ноутбук acer aspire e5-532-p3p2'],[]),([''],[]),([''],[]),([''],[]),([''],[]),(['лучшие моноблоки 2016'],[]),(['лучшие моноблоки 2016'],[]),([''],[]),([''],[]);
