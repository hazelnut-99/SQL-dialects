SELECT normalizedQueryHash('SELECT 1, 1, 1, /* Hello */ \'abc\'') = normalizedQueryHash('SELECT 2, 3');
