SELECT cast(tuple(1, 2), 'Tuple(value_1 UInt64, value_2 UInt64)') AS value, value.value_1, value.value_2;
