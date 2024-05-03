drop table if exists prewhere_alias;
create table prewhere_alias (a Int32, b Int32, c alias a + b) engine = MergeTree order by b;
insert into prewhere_alias values(1, 1);
