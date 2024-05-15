SELECT concat('With ', materialize([(0,0),(10,0),(10,10),(0,10)] :: Ring));
