drop temporary table if exists test_00670;
create temporary table test_00670(id int);
select '======Before Truncate======';
insert into test_00670 values(0);
