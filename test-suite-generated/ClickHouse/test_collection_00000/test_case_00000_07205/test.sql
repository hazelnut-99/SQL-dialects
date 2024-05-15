SELECT sum(if(number % 2 == 0 as cond_expr, 1 as one_expr, 0 as zero_expr) as if_expr), sum(cond_expr), sum(if_expr), one_expr, zero_expr FROM numbers(100);
