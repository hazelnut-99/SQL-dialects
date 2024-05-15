SELECT * FROM information_schema.key_column_usage WHERE table_schema = currentDatabase() AND table_name = 'kcu1' ORDER BY table_schema, column_name;
