SELECT arrayCompact(arrayMap(x -> toString(intDiv(x, 3)), range(number))) FROM numbers(10);
