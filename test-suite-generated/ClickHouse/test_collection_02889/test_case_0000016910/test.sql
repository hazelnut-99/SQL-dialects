SELECT f2 FROM merge(currentDatabase(), '^abc$') PREWHERE f1 = 'a' WHERE _table = 'abc';
