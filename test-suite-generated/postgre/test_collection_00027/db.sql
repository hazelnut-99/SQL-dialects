create table gin_test_tbl(i int4[]) with (autovacuum_enabled = off);
create index gin_test_idx on gin_test_tbl using gin (i)
  with (fastupdate = on, gin_pending_list_limit = 4096);
insert into gin_test_tbl select array[1, 2, g] from generate_series(1, 20000) g;
insert into gin_test_tbl select array[1, 3, g] from generate_series(1, 1000) g;
