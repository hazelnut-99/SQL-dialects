select * from s3Cluster('test_cluster_two_shards_localhost', 'http://localhost:11111/test/{a,b,c}.tsv', 'test', 'testtest', 'TSV', 'c1 UInt64, c2 UInt64, c3 UInt64') ORDER BY c1, c2, c3;
