SELECT concatWithSeparator('|', 'a', concatWithSeparator('|', CAST('a', 'LowCardinality(String)'))) GROUP BY 'a';
