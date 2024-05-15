select tupleElement(tupleElement(row_groups[1], 'columns'), 'statistics') from file(long_string_02735.parquet, ParquetMetadata);
