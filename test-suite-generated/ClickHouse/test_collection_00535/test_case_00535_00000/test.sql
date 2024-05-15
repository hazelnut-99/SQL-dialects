SELECT tag_id, bitmapToArray(z), replace.from, replace.to, bitmapToArray(bitmapTransform(z, replace.from, replace.to)) FROM bitmap_column_expr_test3 ORDER BY tag_id;
