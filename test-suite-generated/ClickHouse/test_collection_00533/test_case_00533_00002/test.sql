SELECT bitmapCardinality(bitmapAnd(bitmapBuild(cast([19,7] AS Array(UInt32))), z )) FROM bitmap_column_expr_test;
