SELECT concatWithSeparator('|', 'a', concatWithSeparator('|', CAST('x', 'LowCardinality(String)'))) GROUP BY 'a';
