select * from s3Cluster('test_cluster_one_shard_three_replicas_localhost', 'http://localhost:11111/test/{a,b}.tsv', headers(MyCustomHeader = 'SomeValue')) order by c1, c2, c3;
