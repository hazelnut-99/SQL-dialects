rollback;
create temp table upsert(key int4 primary key, val text);
create temp table outer_7597 (f1 int4, f2 int4);
insert into outer_7597 values (0, 0);
insert into outer_7597 values (1, 0);
insert into outer_7597 values (0, null);
insert into outer_7597 values (1, null);
create temp table inner_7597(c1 int8, c2 int8);
insert into inner_7597 values(0, null);
