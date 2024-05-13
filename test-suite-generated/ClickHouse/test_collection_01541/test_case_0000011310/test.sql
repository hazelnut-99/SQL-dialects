SELECT count() FROM INFORMATION_SCHEMA.tables WHERE table_schema = currentDatabase() AND table_name = 't';
