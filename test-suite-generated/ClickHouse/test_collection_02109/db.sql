DROP TABLE IF EXISTS execute_on_single_replica_r1 SYNC;
DROP TABLE IF EXISTS execute_on_single_replica_r2 SYNC;
SYSTEM STOP REPLICATION QUEUES execute_on_single_replica_r2;
