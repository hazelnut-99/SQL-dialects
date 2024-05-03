WITH h3ToGeo(h3_index) AS p SELECT round(p.1, 3), round(p.2, 3) FROM h3_indexes ORDER BY h3_index;
