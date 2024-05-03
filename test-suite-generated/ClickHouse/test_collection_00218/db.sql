drop temporary table if exists wups;
create temporary table wups (a Array(Nullable(String)));
insert into wups (a) values(['foo']);
insert into wups (a) values([]);
drop temporary table wups;
create temporary table wups (a Array(Nullable(String)));
insert into wups (a) values([]);
