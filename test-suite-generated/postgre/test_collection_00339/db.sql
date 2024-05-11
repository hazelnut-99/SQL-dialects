CREATE TABLE rngfunc2(rngfuncid int, f2 int);
INSERT INTO rngfunc2 VALUES(1, 11);
INSERT INTO rngfunc2 VALUES(2, 22);
INSERT INTO rngfunc2 VALUES(1, 111);
commit;
CREATE TABLE rngfunc (rngfuncid int, rngfuncsubid int, rngfuncname text, primary key(rngfuncid,rngfuncsubid));
INSERT INTO rngfunc VALUES(1,1,'Joe');
INSERT INTO rngfunc VALUES(1,2,'Ed');
INSERT INTO rngfunc VALUES(2,1,'Mary');
DROP TABLE rngfunc;
CREATE TEMPORARY SEQUENCE rngfunc_rescan_seq1;
CREATE TEMPORARY SEQUENCE rngfunc_rescan_seq2;
CREATE TYPE rngfunc_rescan_t AS (i integer, s bigint);
DROP SEQUENCE rngfunc_rescan_seq1;
DROP SEQUENCE rngfunc_rescan_seq2;
CREATE FUNCTION rngfunc(in f1 int, out f2 int)
AS 'select $1+1' LANGUAGE sql;
CREATE OR REPLACE FUNCTION rngfunc(in f1 int, out f2 int) RETURNS int
AS 'select $1+1' LANGUAGE sql;
CREATE OR REPLACE FUNCTION rngfuncr(in f1 int, out f2 int, out text)
AS $$select $1-1, $1::text || 'z'$$ LANGUAGE sql;
CREATE OR REPLACE FUNCTION rngfuncb(in f1 int, inout f2 int, out text)
AS $$select $2-1, $1::text || 'z'$$ LANGUAGE sql;
DROP FUNCTION rngfunc(int);
DROP FUNCTION rngfuncr(in f2 int, out f1 int, out text);
DROP FUNCTION rngfuncb(in f1 int, inout f2 int);
CREATE FUNCTION dup (f1 anyelement, f2 out anyelement, f3 out anyarray)
AS 'select $1, array[$1,$1]' LANGUAGE sql;
DROP FUNCTION dup(anyelement);
CREATE OR REPLACE FUNCTION dup (inout f2 anyelement, out f3 anyarray)
AS 'select $1, array[$1,$1]' LANGUAGE sql;
DROP FUNCTION dup(anyelement);
CREATE FUNCTION dup (f1 anycompatible, f2 anycompatiblearray, f3 out anycompatible, f4 out anycompatiblearray)
AS 'select $1, $2' LANGUAGE sql;
DROP FUNCTION dup(f1 anycompatible, f2 anycompatiblearray);
CREATE FUNCTION dup (f1 anycompatiblerange, f2 out anycompatible, f3 out anycompatiblearray, f4 out anycompatiblerange)
AS 'select lower($1), array[lower($1), upper($1)], $1' LANGUAGE sql;
