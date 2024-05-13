SELECT (sum(decimal32) + 2 * count(decimal32)) - (sum(decimal32) + 3 * count(decimal32)) From test_table;
