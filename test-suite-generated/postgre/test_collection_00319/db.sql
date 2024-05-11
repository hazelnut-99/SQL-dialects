BEGIN;
END;
BEGIN;
END;
BEGIN;
END;
BEGIN;
COMMIT;
BEGIN;
COMMIT;
BEGIN;
ROLLBACK;
BEGIN;
ROLLBACK;
create temp table tt1(f1 int);
create function count_tt1_v() returns int8 as
'select count(*) from tt1' language sql volatile;
create function count_tt1_s() returns int8 as
'select count(*) from tt1' language sql stable;
begin;
insert into tt1 values(1);
declare c1 cursor for select count_tt1_v(), count_tt1_s();
insert into tt1 values(2);
fetch all from c1;
rollback;
begin;
insert into tt1 values(1);
declare c2 cursor with hold for select count_tt1_v(), count_tt1_s();
insert into tt1 values(2);
commit;
delete from tt1;
fetch all from c2;
drop function count_tt1_v();
drop function count_tt1_s();
ROLLBACK;
CLOSE ALL;
BEGIN;
DECLARE foo1 CURSOR WITH HOLD FOR SELECT 1;
DECLARE foo2 CURSOR WITHOUT HOLD FOR SELECT 1;
CLOSE ALL;
COMMIT;
CREATE TEMP TABLE uctest(f1 int, f2 text);
INSERT INTO uctest VALUES (1, 'one'), (2, 'two'), (3, 'three');
BEGIN;
DECLARE c1 CURSOR FOR SELECT * FROM uctest;
FETCH 2 FROM c1;
DELETE FROM uctest WHERE CURRENT OF c1;
FETCH ALL FROM c1;
MOVE BACKWARD ALL IN c1;
FETCH ALL FROM c1;
COMMIT;
BEGIN;
DECLARE c1 CURSOR FOR SELECT * FROM uctest FOR UPDATE;
FETCH c1;
COMMIT;
BEGIN;
DECLARE c1 CURSOR FOR SELECT * FROM uctest;
FETCH c1;
FETCH RELATIVE 0 FROM c1;
DELETE FROM uctest WHERE CURRENT OF c1;
DELETE FROM uctest WHERE CURRENT OF c1; -- no-op
FETCH RELATIVE 0 FROM c1;
ROLLBACK;
BEGIN;
DECLARE c1 CURSOR FOR SELECT * FROM uctest FOR UPDATE;
FETCH c1;
DELETE FROM uctest WHERE CURRENT OF c1;
DELETE FROM uctest WHERE CURRENT OF c1; -- no-op
ROLLBACK;
BEGIN;
DECLARE c1 INSENSITIVE CURSOR FOR SELECT * FROM uctest;
INSERT INTO uctest VALUES (10, 'ten');
FETCH NEXT FROM c1;
FETCH NEXT FROM c1;
FETCH NEXT FROM c1;  -- insert not visible
COMMIT;
