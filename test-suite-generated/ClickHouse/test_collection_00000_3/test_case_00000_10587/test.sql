SELECT cast(tuple(1, 'Value'), 'Tuple(first UInt64, second String)') AS value, value.first, value.second;
