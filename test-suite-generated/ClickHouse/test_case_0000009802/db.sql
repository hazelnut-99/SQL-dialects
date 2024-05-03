drop table if exists with_nullable;
drop table if exists without_nullable;
CREATE TABLE with_nullable
( timestamp UInt32,
  country LowCardinality(Nullable(String)) ) ENGINE = Memory;
CREATE TABLE  without_nullable
( timestamp UInt32,
  country LowCardinality(String)) ENGINE = Memory;
insert into with_nullable values(0,'f'),(0,'usa');
insert into without_nullable values(0,'usa'),(0,'us2a');
