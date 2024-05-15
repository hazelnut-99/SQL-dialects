drop table if exists tsv;
create table tsv(a int, b int default 7) engine File(TSV);
insert into tsv(a) select number from numbers(10000000);
