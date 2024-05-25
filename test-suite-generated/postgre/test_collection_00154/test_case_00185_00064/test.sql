select coalesce(nullif(exp(-10000::numeric), 0), 0) as underflows;
