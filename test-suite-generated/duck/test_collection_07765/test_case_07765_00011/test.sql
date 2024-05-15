SELECT ntile(5) OVER (ORDER BY ten, four) nn FROM tenk1 ORDER BY ten, four, nn;
