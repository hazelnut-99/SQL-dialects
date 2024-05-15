SELECT count() FROM merge(currentDatabase(), '^numbers\\d+$') WHERE _table = 'non_existing';
