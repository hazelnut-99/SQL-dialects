SELECT * FROM information_schema.columns WHERE table_schema = currentDatabase() AND table_name NOT LIKE '%inner%' ORDER BY table_name, column_name;
