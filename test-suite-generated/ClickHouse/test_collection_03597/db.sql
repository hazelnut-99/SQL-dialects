drop table if exists test_02381;
drop table if exists test_02381_compress;
drop table if exists test_02381;
drop table if exists test_02381_compress;
drop table if exists test_02381_compact;
create table test_02381_compact (a UInt64, b String) ENGINE = MergeTree order by (a, b);
insert into test_02381_compact values (1, 'Hello');
insert into test_02381_compact values (2, 'World');
