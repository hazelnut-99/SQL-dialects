SELECT arrayCompact(x -> x.2, groupArray((number, intDiv(number, 3) % 3))) FROM numbers(10);
