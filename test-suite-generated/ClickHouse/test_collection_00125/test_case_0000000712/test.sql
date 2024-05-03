SELECT DISTINCT regexpQuoteMeta(toString(number)) = toString(number) FROM numbers(100000);
