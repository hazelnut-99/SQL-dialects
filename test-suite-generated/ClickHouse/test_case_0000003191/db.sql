desc urlCluster('test_cluster_one_shard_three_replicas_localhost', headers('X-ClickHouse-Database'='default'), 'http://localhost:11111/test/{a,b}.tsv');
desc urlCluster('test_cluster_one_shard_three_replicas_localhost', 'http://localhost:11111/test/{a,b}.tsv', headers('X-ClickHouse-Database'='default'), 'TSV');
desc urlCluster('test_cluster_one_shard_three_replicas_localhost', 'http://localhost:11111/test/{a,b}.tsv', 'auto', headers('X-ClickHouse-Database'='default'));
desc urlCluster('test_cluster_one_shard_three_replicas_localhost', 'http://localhost:11111/test/{a,b}.tsv', 'TSV', 'auto', headers('X-ClickHouse-Database'='default'));
desc urlCluster('test_cluster_one_shard_three_replicas_localhost', 'http://localhost:11111/test/{a,b}.tsv', 'TSV', headers('X-ClickHouse-Database'='default'), 'auto', 'auto');
