create temporary table test (
    data int,
    default Nullable(DateTime) DEFAULT '1977-01-01 00:00:00'
) engine  = Memory();
insert into test (data) select 1;
