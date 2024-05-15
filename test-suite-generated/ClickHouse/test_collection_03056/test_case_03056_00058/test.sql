SELECT (sum(uint64) - 2 * count(uint64)) + (sum(uint64) - 3 * count(uint64)) From test_table;
