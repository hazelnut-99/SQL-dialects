SELECT toTypeName(topKIfState(10)(toString(number), number % 2)) FROM numbers(100);
