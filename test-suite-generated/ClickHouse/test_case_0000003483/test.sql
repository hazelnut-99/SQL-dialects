select val < 1.5 and val > 1.459 from (select entropy(vals) as val from defaults);
