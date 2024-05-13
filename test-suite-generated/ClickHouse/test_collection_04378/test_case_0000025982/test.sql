select tuple_column from file('02906.orc', 'ORC', 'int64_column Int64, tuple_column Tuple(c Nullable(Int64))') where int64_column % 15 = 0;
