SELECT (1, materialize(2), 'Hello') IN (SELECT materialize(1), 2, 'Hello');
