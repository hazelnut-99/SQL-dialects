SELECT nan AS value, value = value, value = materialize(value), materialize(value) = value, materialize(value) = materialize(value);
