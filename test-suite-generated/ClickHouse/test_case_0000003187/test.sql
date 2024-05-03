select * from urlCluster('test_cluster_one_shard_three_replicas_localhost', 'http://localhost:11111/test/{a,b}.tsv') order by c1, c2, c3;
