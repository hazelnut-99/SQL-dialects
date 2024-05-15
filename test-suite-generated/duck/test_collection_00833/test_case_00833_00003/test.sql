SELECT * FROM final
ORDER BY channel DESC NULLS LAST,
         i_brand_id DESC NULLS LAST,
         i_class_id DESC NULLS LAST,
         i_category_id DESC NULLS LAST
LIMIT 100;
