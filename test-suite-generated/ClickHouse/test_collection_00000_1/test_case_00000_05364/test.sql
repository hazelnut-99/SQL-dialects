SELECT toTypeName(topKResampleState(10, 1, 2, 42)(toString(number), number)) FROM numbers(100);
