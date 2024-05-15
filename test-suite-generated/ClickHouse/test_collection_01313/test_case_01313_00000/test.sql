SELECT  * EXCEPT 'bytes', COLUMNS('bytes') APPLY formatReadableSize FROM columns_transformers;
