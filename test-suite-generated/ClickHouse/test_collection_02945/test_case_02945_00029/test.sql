select count() from file('02841.parquet') where indexHint(s > '');
