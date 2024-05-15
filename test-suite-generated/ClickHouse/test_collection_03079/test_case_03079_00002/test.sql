SELECT k1, k2, k3, sum(value) v FROM t_proj_external GROUP BY k1, k2, k3 ORDER BY k1, k2, k3;
