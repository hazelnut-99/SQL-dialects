SELECT uniqCombinedIfMerge(n) FROM (SELECT uniqCombinedIfState(number, number % 2) AS n, max(number) AS last FROM numbers(10));
