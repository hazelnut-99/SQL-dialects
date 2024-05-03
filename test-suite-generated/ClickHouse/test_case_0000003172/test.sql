select * from urlCluster('test_cluster_two_shards_localhost', 'http://localhost:11111/test/{a,b,c}.tsv') ORDER BY c1, c2, c3;
