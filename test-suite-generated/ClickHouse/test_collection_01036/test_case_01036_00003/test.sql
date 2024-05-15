SELECT * FROM information_schema.tables WHERE table_schema = currentDatabase() AND table_name NOT LIKE '%inner%' ORDER BY table_name;
