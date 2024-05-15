DROP TABLE IF EXISTS testv;
create view testv(a UInt32) as select number a from numbers(10);
DROP TABLE testv;
create view testv(a String) as select number a from numbers(10);
