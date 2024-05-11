rollback;
create temp table upsert(key int4 primary key, val text);
create temp table outer_7597 (f1 int4, f2 int4);
insert into outer_7597 values (0, 0);
insert into outer_7597 values (1, 0);
insert into outer_7597 values (0, null);
insert into outer_7597 values (1, null);
create temp table inner_7597(c1 int8, c2 int8);
insert into inner_7597 values(0, null);
create temp table outer_text (f1 text, f2 text);
insert into outer_text values ('a', 'a');
insert into outer_text values ('b', 'a');
insert into outer_text values ('a', null);
insert into outer_text values ('b', null);
create temp table inner_text (c1 text, c2 text);
insert into inner_text values ('a', null);
insert into inner_text values ('123', '456');
begin;
create function bogus_int8_text_eq(int8, text) returns boolean
language sql as 'select $1::text = $2';
create operator = (procedure=bogus_int8_text_eq, leftarg=int8, rightarg=text);
rollback;  -- to get rid of the bogus operator
create temp table exists_tbl (c1 int, c2 int, c3 int) partition by list (c1);
create temp table exists_tbl_null partition of exists_tbl for values in (null);
create temp table exists_tbl_def partition of exists_tbl default;
insert into exists_tbl select x, x/2, x+1 from generate_series(0,10) x;
analyze exists_tbl;
