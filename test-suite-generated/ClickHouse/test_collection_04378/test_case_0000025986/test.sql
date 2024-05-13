select array_tuple_column from file('02906.orc', 'ORC', 'int64_column Int64, array_tuple_column Array(Tuple(a Nullable(String), b Nullable(Float64), c Nullable(Int64)))') where int64_column % 15 = 0;
