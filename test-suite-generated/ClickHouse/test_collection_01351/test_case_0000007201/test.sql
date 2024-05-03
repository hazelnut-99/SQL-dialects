SELECT arrayCompact(x -> x.2, groupArray((toString(number), toString(intDiv(number, 3) % 3)))) FROM numbers(10);
