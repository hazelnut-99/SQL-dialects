DROP TABLE IF EXISTS arrays_test;
CREATE TABLE arrays_test (a1 Array(UInt16), a2 Array(UInt16), a3 Array(Array(UInt16)), a4 Array(Array(UInt16)) ) ENGINE = Memory;
INSERT INTO arrays_test VALUES ([1,2,3], [2,2,1], [[1,2,3,4],[2,2,1],[3]], [[1,2,4,4],[2,2,1],[3]]), ([21,22,24], [22,22,21], [[21,22,23,24],[22,22,21],[23]], [[21,22,25,24],[22,22,21],[23]]), ([31,32,33], [32,32,31], [[31,32,33,34],[32,32,31],[33]], [[31,32,34,34],[32,32,31],[33]]), ([41,42,43], [42,42,41], [[41,42,43,44],[42,42,41],[43]], [[41,42,44,44],[42,42,41],[43]]);
INSERT INTO arrays_test VALUES ([1,1,1], [1,1,1], [[1,1,1],[1,1,1],[1]], [[1,1,1],[1,1,1],[1]]);
INSERT INTO arrays_test VALUES ([1,2,3], [4,5,6], [[7,8,9],[10,11,12],[13]], [[14,15,16],[17,18,19],[20]]);
DROP TABLE arrays_test;
CREATE TABLE arrays_test (a3 Array(Array(UInt8)), a4 Array(Array(UInt32)) ) ENGINE = Memory;
INSERT INTO arrays_test VALUES ([[]], [[]]), ([[1,2]], [[3,4]]), ([[5,6]], [[7,8]]), ([[]], [[]]), ([[9,10]], [[11,12]]), ([[13,14]], [[15,16]]);
TRUNCATE TABLE arrays_test;
INSERT INTO arrays_test VALUES ([[]], [[]]), ([[1,1]], [[1,1]]), ([[1,1]], [[1,1]]), ([[]], [[]]), ([[1,1]], [[1,1]]), ([[1,1]], [[1,1]]);
DROP TABLE arrays_test;
DROP TABLE IF EXISTS arrays_test;
CREATE TABLE arrays_test (a1 Array(UInt8), a2 Array(UInt32) ) ENGINE = Memory;
INSERT INTO arrays_test VALUES ([], []),([10], [11]), ([], []), ([12], [13]);
TRUNCATE TABLE arrays_test;
INSERT INTO arrays_test VALUES ([], []),([1], [1]), ([], []), ([1], [1]);
