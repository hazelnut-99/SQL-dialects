SELECT toTypeName(topKArrayResampleOrDefaultIfState(10, 1, 2, 42)([toString(number)], number, number % 2)) FROM numbers(100);
