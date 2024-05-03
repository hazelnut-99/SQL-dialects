desc urlCluster('test_cluster_one_shard_three_replicas_localhost', headers('X-ClickHouse-Database'='default'), 'http://localhost:11111/test/{a,b}.tsv');
desc urlCluster('test_cluster_one_shard_three_replicas_localhost', 'http://localhost:11111/test/{a,b}.tsv', headers('X-ClickHouse-Database'='default'), 'TSV');
desc urlCluster('test_cluster_one_shard_three_replicas_localhost', 'http://localhost:11111/test/{a,b}.tsv', 'auto', headers('X-ClickHouse-Database'='default'));
desc urlCluster('test_cluster_one_shard_three_replicas_localhost', 'http://localhost:11111/test/{a,b}.tsv', 'TSV', 'auto', headers('X-ClickHouse-Database'='default'));
desc urlCluster('test_cluster_one_shard_three_replicas_localhost', 'http://localhost:11111/test/{a,b}.tsv', 'TSV', headers('X-ClickHouse-Database'='default'), 'auto', 'auto');
drop table if exists test;
create table test (x UInt32, y UInt32, z UInt32) engine=Memory();
insert into test select * from urlCluster('test_cluster_one_shard_three_replicas_localhost', 'http://localhost:11111/test/a.tsv', 'TSV');
