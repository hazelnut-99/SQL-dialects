drop table if exists rmt_master;
drop table if exists rmt_slave;
system stop replicated sends rmt_master;
system flush logs;
