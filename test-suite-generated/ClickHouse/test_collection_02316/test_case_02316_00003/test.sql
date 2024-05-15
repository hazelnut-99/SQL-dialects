select  DISTINCT _partition_id from weird_partitions_02245 where d >= '2022-01-01 00:00:00' and  d1 >= '2021-12-31 00:00:00' and d1 < '2022-01-01 00:00:00' ORDER BY _partition_id;
