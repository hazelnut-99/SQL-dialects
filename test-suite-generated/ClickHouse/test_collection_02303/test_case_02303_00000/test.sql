SELECT n, count() AS m FROM t_inter_02233 GROUP BY n ORDER BY n WITH FILL INTERPOLATE ( m AS m + 1 );
