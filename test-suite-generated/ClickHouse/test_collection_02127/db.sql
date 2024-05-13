drop table if exists xy;
drop table if exists xy;
drop table if exists xyz;
drop table if exists xyz;
drop table if exists test;
create table test(d Date, k Int64, s String) Engine=MergeTree partition by (toYYYYMM(d),k) order by (d, k);
insert into test values ('2020-01-01', 1, '');
insert into test values ('2020-01-02', 1, '');
drop table test;
drop table if exists myTable;
CREATE TABLE myTable (myDay Date, myOrder Int32, someData String) ENGINE = ReplacingMergeTree PARTITION BY floor(toYYYYMMDD(myDay), -1) ORDER BY (myOrder);
INSERT INTO myTable (myDay, myOrder) VALUES ('2021-01-01', 1);
INSERT INTO myTable (myDay, myOrder) VALUES ('2021-01-02', 2);
// This row should be returned
INSERT INTO myTable (myDay, myOrder) VALUES ('2021-01-03', 3);
