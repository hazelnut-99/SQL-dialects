SELECT '#02136_scalar_subquery_2', (SELECT max(number) FROM numbers(1000)) as n, (SELECT min(number) FROM numbers(1000)) as n2;
