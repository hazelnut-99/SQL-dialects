SELECT * FROM merge(currentDatabase(), '^numbers\\d+$') SAMPLE 0.01;
