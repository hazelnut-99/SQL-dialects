SELECT count() FROM (SELECT number, groupArray(repeat(toString(number), 1000000)) FROM numbers(1000000) GROUP BY number);
