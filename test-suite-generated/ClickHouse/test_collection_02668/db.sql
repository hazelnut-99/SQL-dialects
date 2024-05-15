create table if not exists t (`arr.key` Array(LowCardinality(String)), `arr.value` Array(LowCardinality(String))) engine = Memory;
