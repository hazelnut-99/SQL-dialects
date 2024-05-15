SELECT DISTINCT count() FROM merge(currentDatabase(), '^numbers\\d+$') GROUP BY number;
