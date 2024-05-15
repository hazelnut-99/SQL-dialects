SELECT cast(nan, 'Float32') AS value, value != value, value != materialize(value), materialize(value) != value, materialize(value) != materialize(value);
