pragma enable_verification;;
create table tbl (
	a integer,
	b integer unique,
	c integer unique,
	d integer unique
);;
insert into tbl(b,c,d) values
	(1,2,3),
	(2,3,1),
	(3,1,2);
insert into tbl(b,c,d) values
	(3,3,3) on conflict do nothing;;
