SELECT v, EXTRACT(year FROM d), count(*)
 FROM ctv_data
 GROUP BY 1, 2
 ORDER BY 1, 2;
