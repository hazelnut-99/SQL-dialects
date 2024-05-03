drop table if exists data;
create table data (key Int) engine=Memory();
insert into function clusterAllReplicas(test_cluster_two_shards, currentDatabase(), data, rand()) values (2);
