SELECT toDateTime(fromUnixTimestamp64Micro(toInt64(0)), 'UTC') ts FROM numbers(2);
