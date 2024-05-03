select * from cluster('test_cluster_two_shards', currentDatabase(), data_01227) prewhere key global in (select key from data_01227 prewhere key = 2);
