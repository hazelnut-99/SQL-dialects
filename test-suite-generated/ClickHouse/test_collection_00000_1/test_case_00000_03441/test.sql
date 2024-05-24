SELECT concat('With ', materialize(map(42, 'foo') :: Map(Int32, String)));
