SELECT uniq(b) * any(_sample_factor) FROM t_sample_factor SAMPLE 200000 WHERE a < -1;
