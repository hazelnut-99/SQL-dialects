begin;
create table numeric_tbl (f1 numeric(18,3), f2 numeric);
create view numeric_view as
  select
    f1, f1::numeric(16,4) as f1164, f1::numeric as f1n,
    f2, f2::numeric(16,4) as f2164, f2::numeric as f2n
  from numeric_tbl;
create table bpchar_tbl (f1 character(16) unique, f2 bpchar);
create view bpchar_view as
  select
    f1, f1::character(14) as f114, f1::bpchar as f1n,
    f2, f2::character(14) as f214, f2::bpchar as f2n
  from bpchar_tbl;
rollback;
begin;
create function return_int_input(int) returns int as $$
begin
	return $1;
end;
$$ language plpgsql stable;
create function return_text_input(text) returns text as $$
begin
	return $1;
end;
$$ language plpgsql stable;
