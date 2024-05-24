SELECT cast((1, 'Value'), 'Tuple (id UInt64, value String)') AS value, value.COLUMNS('v') APPLY toString;
