select int64_column, string_column, float64_column from file('02906.orc') where int64_column % 15 = 0;
