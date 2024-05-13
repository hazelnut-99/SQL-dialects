SELECT bitmapCardinality(bitmapAnd(z, bitmapBuild(cast([19,7] AS Array(UInt32))))) FROM bitmap_column_expr_test;
