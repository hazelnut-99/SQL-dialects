SELECT format('The {0} to all questions is {1}.', 'answer', materialize('bar' :: Nullable(FixedString(3))));
