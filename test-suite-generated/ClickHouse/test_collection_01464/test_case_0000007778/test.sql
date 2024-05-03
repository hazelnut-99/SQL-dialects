select * from s3Cluster('test_cluster_two_shards_localhost', 'http://localhost:11111/test/{a,b,c}.tsv', 'test', 'testtest', 'TSV') ORDER BY c1, c2, c3;
