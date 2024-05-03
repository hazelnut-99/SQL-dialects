SELECT toDateTime(fromUnixTimestamp64Micro(toInt64(0)), 'UTC') as ts FROM numbers_mt(2) WHERE ts + 1 = ts;
