select coalesce(nullif(exp(-5000::numeric), 0), 0) as rounds_to_zero;
