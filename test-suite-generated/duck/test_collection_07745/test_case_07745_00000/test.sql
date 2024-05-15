SELECT i_category, i_brand, avg(sum(i_price)) OVER (PARTITION BY i_category), rank() OVER (PARTITION BY i_category ORDER BY i_category, i_brand) rn FROM item GROUP BY i_category, i_brand;
