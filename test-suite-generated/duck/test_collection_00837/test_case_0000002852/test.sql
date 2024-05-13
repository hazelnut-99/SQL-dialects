SELECT * FROM final
ORDER BY channel NULLS LAST,
         i_brand_id NULLS LAST,
         i_class_id NULLS LAST,
         i_category_id NULLS LAST
LIMIT 100;
