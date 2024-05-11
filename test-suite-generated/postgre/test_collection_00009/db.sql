create table t(a integer, b integer);
insert into t(a, b) select i/100 + 1, i + 1 from generate_series(0, 999) n(i);
analyze t;
delete from t;
insert into t(a, b) select i/50 + 1, i + 1 from generate_series(0, 999) n(i);
analyze t;
