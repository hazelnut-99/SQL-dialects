SELECT count(DISTINCT number >= 5 ? number : NULL) FROM numbers(10);
