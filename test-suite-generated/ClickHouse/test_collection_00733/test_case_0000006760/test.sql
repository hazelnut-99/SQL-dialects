SELECT concat('With ', materialize((42, 'foo') :: Tuple(Int32, String)));
