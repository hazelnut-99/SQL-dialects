SELECT 'a}a' AS x, x LIKE (x AS pat), materialize(x) LIKE pat;
