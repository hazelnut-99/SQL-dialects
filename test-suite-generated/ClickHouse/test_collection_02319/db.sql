drop table if exists t;
CREATE TABLE t (a DateTime('UTC'), b String, c String, d String, e Int32) ENGINE = Memory;
INSERT INTO t(a, b, c, d ,e)  VALUES ('2022-03-31','','','',1);
INSERT INTO t(a, b, c, d ,e)  VALUES (1648804224,'','','',2);
INSERT INTO t(a, b, c, d ,e)  VALUES ('2022-03-31 10:18:56','','','',3);
INSERT INTO t(a, b, c, d ,e)  VALUES ('2022-03-31T10:18:56','','','',4);
INSERT INTO t(a, b, c, d ,e)  VALUES ('1648804224','','','',5);
