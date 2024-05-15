rollback;
create table trigtest (i serial primary key);
create table trigtest2 (i int references trigtest(i) on delete cascade);
create function trigtest() returns trigger as $$
begin
	raise notice '% % % %', TG_TABLE_NAME, TG_OP, TG_WHEN, TG_LEVEL;
	return new;
end;$$ language plpgsql;
create trigger trigtest_b_row_tg before insert or update or delete on trigtest
for each row execute procedure trigtest();
create trigger trigtest_a_row_tg after insert or update or delete on trigtest
for each row execute procedure trigtest();
create trigger trigtest_b_stmt_tg before insert or update or delete on trigtest
for each statement execute procedure trigtest();
create trigger trigtest_a_stmt_tg after insert or update or delete on trigtest
for each statement execute procedure trigtest();
insert into trigtest default values;
alter table trigtest disable trigger trigtest_b_row_tg;
insert into trigtest default values;
alter table trigtest disable trigger user;
insert into trigtest default values;
alter table trigtest enable trigger trigtest_a_stmt_tg;
insert into trigtest default values;
insert into trigtest default values;  -- does not trigger
alter table trigtest enable always trigger trigtest_a_stmt_tg;
insert into trigtest default values;  -- now it does
insert into trigtest2 values(1);
insert into trigtest2 values(2);
delete from trigtest where i=2;
alter table trigtest disable trigger all;
delete from trigtest where i=1;
