DROP TABLE IF EXISTS testv;
create view testv(a UInt32) as select number a from numbers(10);
