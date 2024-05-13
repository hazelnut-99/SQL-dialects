SELECT count() FROM information_schema.TABLES WHERE table_schema = currentDatabase() AND table_name = 't';
