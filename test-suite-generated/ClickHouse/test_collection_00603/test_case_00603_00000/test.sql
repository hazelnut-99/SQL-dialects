select val < 2.4 and val > 2.3393 from (select entropy(vals) as val from defaults);
