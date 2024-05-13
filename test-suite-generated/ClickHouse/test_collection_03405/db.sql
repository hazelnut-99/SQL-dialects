drop table if exists test_zkinsert;
create table test_zkinsert (
	name String,
	path String,
	value String
) ENGINE Memory;
insert into test_zkinsert (name, path, value) values ('c', '/1-insert-testc/c/c/c/c/c/c', 11), ('e', '/1-insert-testc/c/c/d', 10), ('c', '/1-insert-testc/c/c/c/c/c/c/c', 10), ('c', '/1-insert-testc/c/c/c/c/c/c', 9), ('f', '/1-insert-testc/c/c/d', 11), ('g', '/1-insert-testc/c/c/d', 12), ('g', '/1-insert-testc/c/c/e', 13), ('g', '/1-insert-testc/c/c/f', 14), ('g', '/1-insert-testc/c/c/kk', 14);
