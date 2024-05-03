SELECT count(DISTINCT number >= 10 ? number : NULL) FROM numbers(10);
