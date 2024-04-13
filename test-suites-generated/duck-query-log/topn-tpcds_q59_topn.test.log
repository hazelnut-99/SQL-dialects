CREATE TABLE final(s_store_name1 VARCHAR, s_store_id1 VARCHAR, d_week_seq1 INTEGER, "sun_sales1 / sun_sales2" DOUBLE, "mon_sales1 / mon_sales2" DOUBLE, "tue_sales1 / tue_sales2" DOUBLE, "wed_sales1 / wed_sales2" DOUBLE, "thu_sales1 / thu_sales2" DOUBLE, "fri_sales1 / fri_sales2" DOUBLE, "sat_sales1 / sat_sales2" DOUBLE);;
COPY final FROM 'data/csv/tpcds_59.csv' (FORMAT CSV, DELIMITER '|', HEADER);;
SELECT *
FROM final
ORDER BY s_store_name1 NULLS FIRST,
         s_store_id1 NULLS FIRST,
         d_week_seq1 NULLS FIRST
LIMIT 100;;
