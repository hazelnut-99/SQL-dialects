drop table if exists d;
drop table if exists has_final_mark;
drop table if exists mixed_final_mark;
drop table if exists t;
create table t (server_date Date, something String) engine MergeTree partition by (toYYYYMM(server_date), server_date) order by (server_date, something);
insert into t values ('2019-01-01', 'test1'), ('2019-02-01', 'test2'), ('2019-03-01', 'test3');
