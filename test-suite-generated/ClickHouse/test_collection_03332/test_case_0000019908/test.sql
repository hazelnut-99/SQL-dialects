SELECT _partition_id, min(d), max(d), min(d1), max(d1), count() FROM weird_partitions_02245 GROUP BY _partition_id ORDER BY _partition_id ASC;
