DROP TABLE IF EXISTS table1;
DROP TABLE IF EXISTS table2;
CREATE TABLE table1 ( id String ) ENGINE = Log;
CREATE TABLE table2 ( parent_id String ) ENGINE = Log;
insert into table1 values ('1');
