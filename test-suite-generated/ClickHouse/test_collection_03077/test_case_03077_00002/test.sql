SELECT format('The {0} to all questions is {1}', 42, materialize(NULL :: Nullable(UInt64)));
