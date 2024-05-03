drop table if exists test_tbl;
create table test_tbl (vend_nm String, ship_dt Date) engine MergeTree partition by toWeek(ship_dt) order by vend_nm;
insert into test_tbl values('1', '2020-11-11'), ('1', '2021-01-01');
