SELECT count() FROM merge(currentDatabase(), '^numbers\\d+$') WHERE _table=1;
