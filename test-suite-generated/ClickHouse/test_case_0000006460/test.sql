select COUNT() from s3Cluster('test_cluster_two_shards_localhost', 'http://localhost:11111/test/{a,b,c}.tsv');
