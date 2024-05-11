CREATE TABLE real_city (
	pop			int4,
	cname		text,
	outline 	path
);
ANALYZE real_city;
rollback;
begin;
rollback;
