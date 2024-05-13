SELECT * FROM final
ORDER BY channel DESC NULLS FIRST,
         i_brand_id DESC NULLS FIRST,
         i_class_id DESC NULLS FIRST,
         i_category_id DESC NULLS FIRST
LIMIT 100;
