DROP DATABASE IF EXISTS test1601_detach_permanently_atomic;
CREATE DATABASE test1601_detach_permanently_atomic Engine=Atomic;
create table test1601_detach_permanently_atomic.test_name_reuse (number UInt64) engine=MergeTree order by tuple();
INSERT INTO test1601_detach_permanently_atomic.test_name_reuse SELECT * FROM numbers(100);
DETACH table test1601_detach_permanently_atomic.test_name_reuse PERMANENTLY;
create table test1601_detach_permanently_atomic.test_name_rename_attempt (number UInt64) engine=MergeTree order by tuple();
SHOW CREATE TABLE test1601_detach_permanently_atomic.test_name_reuse FORMAT Vertical;
ATTACH TABLE test1601_detach_permanently_atomic.test_name_reuse;
