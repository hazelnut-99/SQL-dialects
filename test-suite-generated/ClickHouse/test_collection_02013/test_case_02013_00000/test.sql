SELECT f2 FROM merge(currentDatabase(), '^abc$') PREWHERE f1 = 'a' AND rand() % 100 < 20 WHERE _table = 'abc';
