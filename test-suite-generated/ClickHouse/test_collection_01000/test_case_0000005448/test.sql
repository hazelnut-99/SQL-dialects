SELECT 'a}' AS x, x LIKE (concat(x, '%') AS pat), materialize(x) LIKE pat;
