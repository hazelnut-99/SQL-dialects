drop table if EXISTS l;
drop table if EXISTS r;
CREATE TABLE l (luid Nullable(Int16), name String) ENGINE=MergeTree order by tuple() as
select * from VALUES ((1231, 'John'),(6666, 'Ksenia'),(Null, '---'));
CREATE TABLE r (ruid Nullable(Int16), name String) ENGINE=MergeTree order by tuple()  as
select * from VALUES ((1231, 'John'),(1232, 'Johny'));
