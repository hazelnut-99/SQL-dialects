SELECT format('The {0} to all questions is {1}.', 'answer', materialize(map(42, 'foo') :: Map(Int32, String)));
