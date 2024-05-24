SELECT last_value_respect_nullsMerge(t) FROM (Select last_value_respect_nullsState(NULL::Nullable(UInt8)) as t FROM numbers(5));
