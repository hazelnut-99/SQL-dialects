SELECT length(replaceAll(bin('clickhouse cloud'), '0', '')) = bitCount('clickhouse cloud');
