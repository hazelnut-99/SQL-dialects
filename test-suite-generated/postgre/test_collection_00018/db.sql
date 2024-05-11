CREATE TABLE CASE_TBL (
  i integer,
  f double precision
);
CREATE TABLE CASE2_TBL (
  i integer,
  j integer
);
INSERT INTO CASE_TBL VALUES (1, 10.1);
INSERT INTO CASE_TBL VALUES (2, 20.2);
INSERT INTO CASE_TBL VALUES (3, -30.3);
INSERT INTO CASE_TBL VALUES (4, NULL);
INSERT INTO CASE2_TBL VALUES (1, -1);
INSERT INTO CASE2_TBL VALUES (2, -2);
INSERT INTO CASE2_TBL VALUES (3, -3);
INSERT INTO CASE2_TBL VALUES (2, -4);
INSERT INTO CASE2_TBL VALUES (1, NULL);
INSERT INTO CASE2_TBL VALUES (NULL, -6);
ROLLBACK;
BEGIN;
CREATE DOMAIN arrdomain AS int[];
CREATE FUNCTION make_ad(int,int) returns arrdomain as
  'declare x arrdomain;
   begin
     x := array[$1,$2];
     return x;
   end' language plpgsql volatile;
CREATE FUNCTION ad_eq(arrdomain, arrdomain) returns boolean as
  'begin return array_eq($1, $2); end' language plpgsql;
CREATE OPERATOR = (procedure = ad_eq,
                   leftarg = arrdomain, rightarg = arrdomain);
