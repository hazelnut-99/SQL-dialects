SELECT nan AS lhs, cast(nan, 'Float32') AS rhs, lhs = rhs, lhs = materialize(rhs), materialize(lhs) = rhs, materialize(lhs) = materialize(rhs);
