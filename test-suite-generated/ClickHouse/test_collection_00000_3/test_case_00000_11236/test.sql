SELECT tuple(tuple(0.0001)), anyLast(number) FROM numbers(1) GROUP BY number WITH ROLLUP WITH TOTALS;
