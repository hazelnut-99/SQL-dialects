SELECT cast(tuple(1), 'Tuple(value UInt64)') AS value, number FROM numbers(value.*);
