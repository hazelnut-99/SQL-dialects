select val < 2.189 and val > 2.1886 from (select entropy(vals) as val from defaults);
