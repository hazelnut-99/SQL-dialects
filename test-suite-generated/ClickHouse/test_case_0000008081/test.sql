SELECT count() OVER (ORDER BY number + 1) + 1 as foo FROM numbers(10)
ORDER BY foo;
