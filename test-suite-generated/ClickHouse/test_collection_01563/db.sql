DROP database IF EXISTS test_1603_rename_bug_ordinary;
DROP database IF EXISTS test_1603_rename_bug_atomic;
create database test_1603_rename_bug_atomic engine=Atomic;
create table test_1603_rename_bug_atomic.foo engine=Memory as select * from numbers(100);
create table test_1603_rename_bug_atomic.bar engine=Log as select * from numbers(200);
detach table test_1603_rename_bug_atomic.foo;
attach table test_1603_rename_bug_atomic.foo;
