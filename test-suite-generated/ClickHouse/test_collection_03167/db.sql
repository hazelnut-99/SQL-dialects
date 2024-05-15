drop table if exists rmt_master;
drop table if exists rmt_slave;
system stop replicated sends rmt_master;
system stop pulling replication log rmt_slave;
system start pulling replication log rmt_slave;
system flush logs;
system start replicated sends rmt_master;
system flush logs;
