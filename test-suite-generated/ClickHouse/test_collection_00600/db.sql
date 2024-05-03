DROP TABLE IF EXISTS array_element_test;
CREATE TABLE array_element_test (arr Array(Int32), id Int32) ENGINE = Memory;
insert into array_element_test VALUES ([11,12,13], 2), ([11,12], 3), ([11,12,13], -1), ([11,12], -2), ([11,12], -3), ([11], 0);
DROP TABLE IF EXISTS array_element_test;
CREATE TABLE array_element_test (arr Array(Int32), id UInt32) ENGINE = Memory;
insert into array_element_test VALUES ([11,12,13], 2), ([11,12], 3), ([11,12,13], 1), ([11,12], 4), ([11], 0);
DROP TABLE IF EXISTS array_element_test;
CREATE TABLE array_element_test (arr Array(String), id Int32) ENGINE = Memory;
insert into array_element_test VALUES (['Abc','Df','Q'], 2), (['Abc','DEFQ'], 3), (['ABC','Q','ERT'], -1), (['Ab','ber'], -2), (['AB','asd'], -3), (['A'], 0);
