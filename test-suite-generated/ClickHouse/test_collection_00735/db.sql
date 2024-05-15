drop table if exists ttl;
create table ttl (d Date, a Int) engine = MergeTree order by a partition by toDayOfMonth(d) ttl d + interval 1 day;
system stop ttl merges ttl;
optimize table ttl partition 10 final;
system start ttl merges ttl;
optimize table ttl partition 10 final;
