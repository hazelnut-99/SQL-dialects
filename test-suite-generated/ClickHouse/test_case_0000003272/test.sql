SELECT (1, materialize(2), materialize('World')) IN (SELECT materialize(1), 2, 'Hello');
