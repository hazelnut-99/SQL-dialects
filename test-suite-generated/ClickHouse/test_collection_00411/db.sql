DROP TABLE IF EXISTS using1;
DROP TABLE IF EXISTS using2;
CREATE TABLE using1(a UInt8, b UInt8) ENGINE=Memory;
CREATE TABLE using2(a UInt8, b UInt8) ENGINE=Memory;
INSERT INTO using1 VALUES (1, 1) (2, 2) (3, 3);
INSERT INTO using2 VALUES (4, 4) (2, 2) (3, 3);
DROP TABLE using1;
DROP TABLE using2;
drop table if exists persons;
drop table if exists children;
create table persons (id String, name String) engine MergeTree order by id;
create table children (id String, childName String) engine MergeTree order by id;
insert into persons (id, name)
values ('1', 'John'), ('2', 'Jack'), ('3', 'Daniel'), ('4', 'James'), ('5', 'Amanda');
insert into children (id, childName)
values ('1', 'Robert'), ('1', 'Susan'), ('3', 'Sarah'), ('4', 'David'), ('4', 'Joseph'), ('5', 'Robert');
