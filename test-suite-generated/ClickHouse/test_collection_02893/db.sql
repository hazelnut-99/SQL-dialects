DROP TABLE IF EXISTS t4;
DROP TABLE IF EXISTS t7;
create table t4 (c26 String) engine = Log;
create view t7 as select max(ref_3.c26) as c_2_c46_1 from t4 as ref_3;
