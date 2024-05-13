SELECT sumIf(1 as one_expr, number % 2 > 2 as cond_expr), sum(cond_expr), one_expr FROM numbers(100);
